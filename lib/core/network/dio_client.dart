import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../constants/api_constants.dart';
import '../errors/failures.dart';
import 'package:flutter/foundation.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get dio {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: ApiConstants.connectTimeout,
        receiveTimeout: ApiConstants.receiveTimeout,
        headers: {'Content-Type': 'application/json'},
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(request: true, requestBody: true, responseBody: true));
    }

    dio.interceptors.add(RetryInterceptor(dio));
    dio.interceptors.add(ErrorInterceptor());

    return dio;
  }
}

class RetryInterceptor extends Interceptor {
  final Dio dio;
  final int maxRetries = 3;
  final List<Duration> backoff = [
    const Duration(milliseconds: 500),
    const Duration(milliseconds: 1000),
    const Duration(milliseconds: 2000),
  ];

  RetryInterceptor(this.dio);

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final isTimeout = err.type == DioExceptionType.connectionTimeout || 
                      err.type == DioExceptionType.receiveTimeout;
    
    final extra = err.requestOptions.extra;
    int retryCount = extra['retryCount'] ?? 0;

    if (isTimeout && retryCount < maxRetries) {
      retryCount++;
      err.requestOptions.extra['retryCount'] = retryCount;
      
      await Future.delayed(backoff[retryCount - 1]);
      
      try {
        final response = await dio.fetch(err.requestOptions);
        return handler.resolve(response);
      } catch (e) {
        if (e is DioException) {
          return super.onError(e, handler);
        }
      }
    }
    
    super.onError(err, handler);
  }
}

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      final statusCode = err.response?.statusCode;
      final message = err.response?.data?['error']?['message']?.toString() ?? err.message ?? 'Unknown error';

      switch (statusCode) {
        case 400:
          err = err.copyWith(error: const Failure.notFound(message: 'City not found or invalid query'));
          break;
        case 401:
          err = err.copyWith(error: const Failure.unauthorized(message: 'Invalid API key'));
          break;
        case 403:
          err = err.copyWith(error: const Failure.unauthorized(message: 'API key disabled'));
          break;
        case 429:
          err = err.copyWith(error: const Failure.rateLimited(message: 'Too many requests'));
          break;
        default:
          if (statusCode != null && statusCode >= 500) {
            err = err.copyWith(error: Failure.serverError(code: statusCode, message: message));
          } else {
            err = err.copyWith(error: Failure.unknown(message: message));
          }
      }
    } else if (err.type == DioExceptionType.connectionError || err.type == DioExceptionType.unknown) {
      err = err.copyWith(error: const Failure.network(message: 'No internet connection'));
    } else if (err.type == DioExceptionType.connectionTimeout || err.type == DioExceptionType.receiveTimeout || err.type == DioExceptionType.sendTimeout) {
      err = err.copyWith(error: const Failure.network(message: 'Request timed out'));
    } else {
      err = err.copyWith(error: Failure.unknown(message: err.message ?? 'Unknown error'));
    }

    super.onError(err, handler);
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const factory Failure.network({required String message}) = NetworkFailure;
  const factory Failure.notFound({required String message}) = NotFoundFailure;
  const factory Failure.unauthorized({required String message}) = UnauthorizedFailure;
  const factory Failure.rateLimited({required String message}) = RateLimitedFailure;
  const factory Failure.serverError({required int code, required String message}) = ServerFailure;
  const factory Failure.cache({required String message}) = CacheFailure;
  const factory Failure.location({required String message}) = LocationFailure;
  const factory Failure.unknown({required String message}) = UnknownFailure;
}

extension FailureMessage on Failure {
  String get primaryMessage => switch (this) {
    NetworkFailure() => 'No Internet Connection',
    NotFoundFailure() => 'City Not Found',
    UnauthorizedFailure() => 'API Key Invalid',
    RateLimitedFailure() => 'Too Many Requests',
    ServerFailure() => 'Server Error',
    CacheFailure() => 'Cache Error',
    LocationFailure() => 'Location Unavailable',
    UnknownFailure() => 'Something Went Wrong',
  };
  
  String get secondaryMessage => switch (this) {
    NetworkFailure(:final message) => message.isNotEmpty ? message : 'Check your connection and try again.',
    NotFoundFailure(:final message) => message.isNotEmpty ? message : 'Make sure the city name is correct.',
    UnauthorizedFailure(:final message) => message.isNotEmpty ? message : 'Please update your API key in settings.',
    RateLimitedFailure(:final message) => message.isNotEmpty ? message : 'You\'ve hit the rate limit. Wait a moment.',
    ServerFailure(:final code, :final message) => 'Server returned error $code. $message',
    CacheFailure(:final message) => message.isNotEmpty ? message : 'Failed to read cached data.',
    LocationFailure(:final message) => message.isNotEmpty ? message : 'Enable location permissions in your device settings.',
    UnknownFailure(:final message) => message.isNotEmpty ? message : 'An unexpected error occurred. Please try again.',
  };
}

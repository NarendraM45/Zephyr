import 'package:fpdart/fpdart.dart';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import '../../core/errors/failures.dart';
import '../../core/network/connectivity_service.dart';
import '../../domain/entities/weather.dart';
import '../../domain/entities/forecast_day.dart';
import '../../domain/entities/search_result.dart';
import '../../domain/repositories/i_weather_repository.dart';
import '../../core/services/location_service.dart';
import '../datasources/remote/weather_remote_datasource.dart';
import '../datasources/local/weather_local_datasource.dart';
import '../../core/exceptions/location_exceptions.dart';
import '../models/forecast_model.dart';

@Injectable(as: IWeatherRepository)
class WeatherRepositoryImpl implements IWeatherRepository {
  WeatherRepositoryImpl(
    this._remote,
    this._local,
    this._connectivity,
    this._locationService,
  );

  final WeatherRemoteDataSource _remote;
  final WeatherLocalDataSource _local;
  final ConnectivityService _connectivity;
  final LocationService _locationService;

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(String query) async {
    final isConnected = await _connectivity.isConnected;
    final cleanQuery = query.toLowerCase();

    if (!isConnected) {
      final cached = await _local.getWeather(cleanQuery);
      if (cached != null) return Right(cached.toEntity());
      return const Left(Failure.network(message: 'No internet and no cached data'));
    }

    try {
      final model = await _remote.getCurrentWeather(query);
      final entity = model.toEntity();
      await _local.cacheWeather(cleanQuery, model);
      return Right(entity);
    } on DioException catch (e) {
      final cached = await _local.getWeather(cleanQuery);
      if (cached != null) return Right(cached.toEntity());
      return Left((e.error as Failure?) ?? Failure.unknown(message: e.message ?? 'Unknown error'));
    } on LocationServiceDisabledException {
      rethrow;
    } on LocationPermissionDeniedException {
      rethrow;
    } on LocationPermissionPermanentlyDeniedException {
      rethrow;
    } catch (e) {
      final cached = await _local.getWeather(cleanQuery);
      if (cached != null) return Right(cached.toEntity());
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ForecastDay>>> getForecast(String query, {int days = 7}) async {
    final isConnected = await _connectivity.isConnected;
    final cleanQuery = query.toLowerCase();
    
    if (!isConnected) {
      final cachedJsonList = await _local.getForecast(cleanQuery);
      if (cachedJsonList != null) {
        try {
          final models = cachedJsonList.map((j) => ForecastDayModel.fromJson(j as Map<String, dynamic>)).toList();
          final entities = models.map((m) => m.toEntity()).toList();
          return Right(entities);
        } catch (_) {}
      }
      return const Left(Failure.network(message: 'No internet connection and no cached forecast'));
    }

    try {
      final models = await _remote.getForecast(query, days: days);
      final entities = models.map((m) => m.toEntity()).toList();
      
      // Cache the models as JSON list
      final jsonList = models.map((m) => m.toJson()).toList();
      await _local.cacheForecast(cleanQuery, jsonList);
      
      return Right(entities);
    } on DioException catch (e) {
      final cachedJsonList = await _local.getForecast(cleanQuery);
      if (cachedJsonList != null) {
        try {
          final models = cachedJsonList.map((j) => ForecastDayModel.fromJson(j as Map<String, dynamic>)).toList();
          return Right(models.map((m) => m.toEntity()).toList());
        } catch (_) {}
      }
      return Left((e.error as Failure?) ?? Failure.unknown(message: e.message ?? 'Unknown error'));
    } on LocationServiceDisabledException {
      rethrow;
    } on LocationPermissionDeniedException {
      rethrow;
    } on LocationPermissionPermanentlyDeniedException {
      rethrow;
    } catch (e) {
      final cachedJsonList = await _local.getForecast(cleanQuery);
      if (cachedJsonList != null) {
        try {
          final models = cachedJsonList.map((j) => ForecastDayModel.fromJson(j as Map<String, dynamic>)).toList();
          return Right(models.map((m) => m.toEntity()).toList());
        } catch (_) {}
      }
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SearchResult>>> searchLocations(String query) async {
    final isConnected = await _connectivity.isConnected;
    
    if (!isConnected) {
      return const Left(Failure.network(message: 'No internet connection'));
    }

    try {
      final models = await _remote.searchLocations(query);
      final entities = models.map((m) => m.toEntity()).toList();
      return Right(entities);
    } on DioException catch (e) {
      return Left((e.error as Failure?) ?? Failure.unknown(message: e.message ?? 'Unknown error'));
    } catch (e) {
      return Left(Failure.unknown(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> getDeviceLocationQuery() async {
    final positionResult = await _locationService.getCurrentPosition();
    return positionResult.fold(
      (failure) => Left(failure),
      (pos) async {
        String alias = '';
        try {
          final placemarks = await placemarkFromCoordinates(pos.latitude, pos.longitude);
          if (placemarks.isNotEmpty) {
            final place = placemarks.first;
            final locality = place.subLocality ?? place.locality ?? place.subAdministrativeArea;
            if (locality != null && locality.isNotEmpty) {
              alias = locality;
            }
          }
        } catch (_) {}
        
        if (alias.isNotEmpty) {
           return Right('${pos.latitude},${pos.longitude}|$alias');
        }
        return Right('${pos.latitude},${pos.longitude}');
      },
    );
  }

  @override
  Future<Either<Failure, Weather?>> getCachedWeather(String cityKey) async {
    try {
      final cached = await _local.getWeather(cityKey);
      return Right(cached?.toEntity());
    } catch (e) {
      return Left(Failure.cache(message: 'Failed to get cached weather: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> cacheWeather(String cityKey, Weather weather) async {
    // We already cache in getCurrentWeather from models, so we might not need this explicitly 
    // unless we construct models from entities, which is complex. 
    // Since we're using hive with JSON strings from the remote payload, it's easier to cache raw json.
    return const Left(Failure.unknown(message: 'Not implemented directly on entity level'));
  }

  @override
  Future<Either<Failure, List<String>>> getFavorites() async {
    try {
      final favorites = await _local.getFavorites();
      return Right(favorites);
    } catch (e) {
      return Left(Failure.cache(message: 'Failed to get favorites: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> toggleFavorite(String cityName) async {
    try {
      await _local.toggleFavorite(cityName);
      return const Right(null);
    } catch (e) {
      return Left(Failure.cache(message: 'Failed to toggle favorite: $e'));
    }
  }

  @override
  Future<Either<Failure, void>> clearCache() async {
    try {
      await _local.clearCache();
      return const Right(null);
    } catch (e) {
      return Left(Failure.cache(message: 'Failed to clear cache: $e'));
    }
  }
}

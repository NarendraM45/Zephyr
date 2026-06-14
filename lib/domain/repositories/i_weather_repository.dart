import 'package:fpdart/fpdart.dart';
import '../../core/errors/failures.dart';
import '../entities/weather.dart';
import '../entities/forecast_day.dart';
import '../entities/search_result.dart';

abstract interface class IWeatherRepository {
  Future<Either<Failure, Weather>> getCurrentWeather(String query);
  Future<Either<Failure, List<ForecastDay>>> getForecast(String query, {int days = 7});
  Future<Either<Failure, List<SearchResult>>> searchLocations(String query);
  Future<Either<Failure, String>> getDeviceLocationQuery();
  Future<Either<Failure, Weather?>> getCachedWeather(String cityKey);
  Future<Either<Failure, void>> cacheWeather(String cityKey, Weather weather);
  Future<Either<Failure, List<String>>> getFavorites();
  Future<Either<Failure, void>> toggleFavorite(String cityName);
  Future<Either<Failure, void>> clearCache();
}

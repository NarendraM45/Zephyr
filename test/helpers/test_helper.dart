import 'package:mockito/annotations.dart';
import 'package:zephyr/data/datasources/remote/weather_remote_datasource.dart';
import 'package:zephyr/data/datasources/local/weather_local_datasource.dart';
import 'package:zephyr/core/network/connectivity_service.dart';
import 'package:zephyr/core/services/location_service.dart';
import 'package:zephyr/domain/usecases/get_current_weather.dart';

@GenerateMocks([
  WeatherRemoteDataSource,
  WeatherLocalDataSource,
  ConnectivityService,
  LocationService,
  GetCurrentWeather,
])
void main() {}

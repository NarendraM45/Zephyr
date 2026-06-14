// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:zephyr/core/network/connectivity_service.dart' as _i226;
import 'package:zephyr/core/network/dio_client.dart' as _i890;
import 'package:zephyr/core/services/location_service.dart' as _i371;
import 'package:zephyr/data/datasources/local/weather_local_datasource.dart'
    as _i350;
import 'package:zephyr/data/datasources/remote/weather_remote_datasource.dart'
    as _i210;
import 'package:zephyr/data/repositories/weather_repository_impl.dart' as _i424;
import 'package:zephyr/domain/repositories/i_weather_repository.dart' as _i366;
import 'package:zephyr/domain/usecases/clear_cache.dart' as _i658;
import 'package:zephyr/domain/usecases/get_current_weather.dart' as _i960;
import 'package:zephyr/domain/usecases/get_device_location.dart' as _i47;
import 'package:zephyr/domain/usecases/get_favorites.dart' as _i103;
import 'package:zephyr/domain/usecases/get_forecast.dart' as _i652;
import 'package:zephyr/domain/usecases/search_locations.dart' as _i1042;
import 'package:zephyr/domain/usecases/toggle_favorite.dart' as _i405;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final connectivityModule = _$ConnectivityModule();
    final dioModule = _$DioModule();
    gh.factory<_i371.LocationService>(() => _i371.LocationService());
    gh.lazySingleton<_i895.Connectivity>(() => connectivityModule.connectivity);
    gh.lazySingleton<_i361.Dio>(() => dioModule.dio);
    gh.lazySingleton<_i350.WeatherLocalDataSource>(
        () => _i350.WeatherLocalDataSource());
    gh.factory<_i210.WeatherRemoteDataSource>(
        () => _i210.WeatherRemoteDataSource(gh<_i361.Dio>()));
    gh.factory<_i226.ConnectivityService>(
        () => _i226.ConnectivityService(gh<_i895.Connectivity>()));
    gh.factory<_i366.IWeatherRepository>(() => _i424.WeatherRepositoryImpl(
          gh<_i210.WeatherRemoteDataSource>(),
          gh<_i350.WeatherLocalDataSource>(),
          gh<_i226.ConnectivityService>(),
          gh<_i371.LocationService>(),
        ));
    gh.factory<_i658.ClearCache>(
        () => _i658.ClearCache(gh<_i366.IWeatherRepository>()));
    gh.factory<_i960.GetCurrentWeather>(
        () => _i960.GetCurrentWeather(gh<_i366.IWeatherRepository>()));
    gh.factory<_i47.GetDeviceLocation>(
        () => _i47.GetDeviceLocation(gh<_i366.IWeatherRepository>()));
    gh.factory<_i103.GetFavorites>(
        () => _i103.GetFavorites(gh<_i366.IWeatherRepository>()));
    gh.factory<_i652.GetForecast>(
        () => _i652.GetForecast(gh<_i366.IWeatherRepository>()));
    gh.factory<_i1042.SearchLocations>(
        () => _i1042.SearchLocations(gh<_i366.IWeatherRepository>()));
    gh.factory<_i405.ToggleFavorite>(
        () => _i405.ToggleFavorite(gh<_i366.IWeatherRepository>()));
    return this;
  }
}

class _$ConnectivityModule extends _i226.ConnectivityModule {}

class _$DioModule extends _i890.DioModule {}

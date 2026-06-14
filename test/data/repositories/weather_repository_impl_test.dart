import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zephyr/core/errors/failures.dart';
import 'package:zephyr/data/repositories/weather_repository_impl.dart';
import 'package:zephyr/data/models/weather_model.dart';
import 'package:zephyr/data/models/location_model.dart';
import 'package:zephyr/data/models/hourly_model.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late WeatherRepositoryImpl repository;
  late MockWeatherRemoteDataSource mockRemoteDataSource;
  late MockWeatherLocalDataSource mockLocalDataSource;
  late MockConnectivityService mockConnectivityService;
  late MockLocationService mockLocationService;

  setUp(() {
    mockRemoteDataSource = MockWeatherRemoteDataSource();
    mockLocalDataSource = MockWeatherLocalDataSource();
    mockConnectivityService = MockConnectivityService();
    mockLocationService = MockLocationService();

    repository = WeatherRepositoryImpl(
      mockRemoteDataSource,
      mockLocalDataSource,
      mockConnectivityService,
      mockLocationService,
    );
  });

  const tCityName = 'London';
  
  final tWeatherModel = WeatherModel(
    location: const LocationModel(
      name: tCityName,
      region: 'City of London',
      country: 'UK',
      lat: 51.52,
      lon: -0.11,
      tzId: 'Europe/London',
      localtime: '2023-10-27 10:00',
    ),
    current: const CurrentModel(
      tempC: 15.0,
      tempF: 59.0,
      feelslikeC: 14.0,
      feelslikeF: 57.0,
      windKph: 10.0,
      windMph: 6.2,
      windDegree: 180,
      windDir: 'S',
      pressureMb: 1012,
      precipMm: 0.0,
      humidity: 80,
      isDay: 1,
      condition: ConditionModel(text: 'Sunny', code: 1000, icon: ''),
      uv: 3.0,
      visKm: 10.0,
    ),
    alerts: [],
    cachedAt: DateTime.parse('2023-10-27T10:00:00Z'),
  );

  final tWeather = tWeatherModel.toEntity();

  group('getCurrentWeather', () {
    test('should check if device is online', () async {
      // arrange
      when(mockConnectivityService.isConnected).thenAnswer((_) async => true);
      when(mockRemoteDataSource.getCurrentWeather(any)).thenAnswer((_) async => tWeatherModel);
      when(mockLocalDataSource.cacheWeather(any, any)).thenAnswer((_) async => Future.value());
      // act
      await repository.getCurrentWeather(tCityName);
      // assert
      verify(mockConnectivityService.isConnected);
    });

    group('device is online', () {
      setUp(() {
        when(mockConnectivityService.isConnected).thenAnswer((_) async => true);
      });

      test('should return remote data when call is successful', () async {
        // arrange
        when(mockRemoteDataSource.getCurrentWeather(any)).thenAnswer((_) async => tWeatherModel);
        when(mockLocalDataSource.cacheWeather(any, any)).thenAnswer((_) async => Future.value());
        // act
        final result = await repository.getCurrentWeather(tCityName);
        // assert
        verify(mockRemoteDataSource.getCurrentWeather(tCityName));
        expect(result.fold((l) => null, (r) => r.cityName), equals(tWeather.cityName));
      });

      test('should cache data locally when call is successful', () async {
        // arrange
        when(mockRemoteDataSource.getCurrentWeather(any)).thenAnswer((_) async => tWeatherModel);
        when(mockLocalDataSource.cacheWeather(any, any)).thenAnswer((_) async => Future.value());
        // act
        await repository.getCurrentWeather(tCityName);
        // assert
        verify(mockRemoteDataSource.getCurrentWeather(tCityName));
        verify(mockLocalDataSource.cacheWeather(tCityName.toLowerCase(), tWeatherModel));
      });

      test('should return cached data when remote call fails and cache exists', () async {
        // arrange
        when(mockRemoteDataSource.getCurrentWeather(any)).thenThrow(Exception());
        when(mockLocalDataSource.getWeather(any)).thenAnswer((_) async => tWeatherModel);
        // act
        final result = await repository.getCurrentWeather(tCityName);
        // assert
        verify(mockRemoteDataSource.getCurrentWeather(tCityName));
        verify(mockLocalDataSource.getWeather(tCityName.toLowerCase()));
        expect(result.fold((l) => null, (r) => r.cityName), equals(tWeather.cityName));
      });
    });

    group('device is offline', () {
      setUp(() {
        when(mockConnectivityService.isConnected).thenAnswer((_) async => false);
      });

      test('should return cached data when device is offline and cache exists', () async {
        // arrange
        when(mockLocalDataSource.getWeather(any)).thenAnswer((_) async => tWeatherModel);
        // act
        final result = await repository.getCurrentWeather(tCityName);
        // assert
        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource.getWeather(tCityName.toLowerCase()));
        expect(result.fold((l) => null, (r) => r.cityName), equals(tWeather.cityName));
      });

      test('should return NetworkFailure when offline and no cache', () async {
        // arrange
        when(mockLocalDataSource.getWeather(any)).thenAnswer((_) async => null);
        // act
        final result = await repository.getCurrentWeather(tCityName);
        // assert
        verify(mockLocalDataSource.getWeather(tCityName.toLowerCase()));
        expect(result.isLeft(), true);
        result.fold((l) => expect(l, isA<NetworkFailure>()), (r) => fail('Should be failure'));
      });
    });
  });
}

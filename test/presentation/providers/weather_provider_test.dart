import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/mockito.dart';
import 'package:fpdart/fpdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zephyr/core/errors/failures.dart';
import 'package:zephyr/domain/entities/weather.dart';
import 'package:zephyr/presentation/providers/weather_provider.dart';
import 'package:zephyr/injection_container.dart';
import 'package:zephyr/domain/usecases/get_current_weather.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late ProviderContainer container;
  late MockGetCurrentWeather mockGetCurrentWeather;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({'selectedCity': 'London'});

    mockGetCurrentWeather = MockGetCurrentWeather();
    
    // Setup GetIt for test
    getIt.reset();
    getIt.registerSingleton<GetCurrentWeather>(mockGetCurrentWeather);

    container = ProviderContainer();
  });

  tearDown(() {
    container.dispose();
  });

  final tWeather = Weather(
    cityName: 'London',
    region: 'City of London',
    country: 'UK',
    lat: 51.52,
    lon: -0.11,
    localtime: '2023-10-27 10:00',
    tempC: 15.0,
    tempF: 59.0,
    feelsLikeC: 14.0,
    feelsLikeF: 57.0,
    humidity: 80,
    windKph: 10.0,
    windMph: 6.2,
    windDir: 'S',
    windDegree: 180,
    conditionText: 'Sunny',
    conditionCode: 1000,
    uvIndex: 3.0,
    visibilityKm: 10.0,
    pressureMb: 1012.0,
    precipMm: 0.0,
    isDay: true,
    alerts: [],
    airQuality: null,
    cachedAt: DateTime.parse('2023-10-27T10:00:00Z'),
  );

  test('initial state should be AsyncLoading and then AsyncData on success', () async {
    // arrange
    when(mockGetCurrentWeather.execute(any)).thenAnswer((_) async => Right(tWeather));
    
    // act & assert
    // Listen to the provider so it executes
    final sub = container.listen(weatherNotifierProvider, (_, __) {});
    
    // Initially should be loading
    expect(container.read(weatherNotifierProvider), isA<AsyncLoading>());
    
    // Wait for future to complete
    await Future.delayed(Duration.zero);
    
    final state = container.read(weatherNotifierProvider);
    expect(state, isA<AsyncData<Weather>>());
    expect(state.value, equals(tWeather));
    
    sub.close();
  });

  test('should be AsyncError when usecase returns failure', () async {
    // arrange
    const failure = Failure.network(message: 'No internet');
    when(mockGetCurrentWeather.execute(any)).thenAnswer((_) async => const Left(failure));
    
    // act
    final sub = container.listen(weatherNotifierProvider, (_, __) {});
    await Future.delayed(Duration.zero);
    
    // assert
    final state = container.read(weatherNotifierProvider);
    expect(state, isA<AsyncError>());
    expect(state.error, equals(failure));
    
    sub.close();
  });
}

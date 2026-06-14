import 'dart:async';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/entities/weather.dart';
import '../../domain/usecases/get_current_weather.dart';
import '../../injection_container.dart';

part 'weather_provider.g.dart';

@Riverpod(keepAlive: true)
class SelectedCity extends _$SelectedCity {
  @override
  String build() {
    _loadCity();
    return 'auto:ip'; // Default to IP-based location
  }

  Future<void> _loadCity() async {
    final prefs = await SharedPreferences.getInstance();
    final city = prefs.getString('selectedCity');
    if (city != null) {
      state = city;
    }
  }

  void set(String city) {
    state = city;
    SharedPreferences.getInstance().then((prefs) => prefs.setString('selectedCity', city));
  }
}

@Riverpod(keepAlive: true)
class WeatherNotifier extends _$WeatherNotifier {
  @override
  FutureOr<Weather> build() async {
    final city = ref.watch(selectedCityProvider);
    return _fetchWeather(city);
  }

  Future<Weather> _fetchWeather(String query) async {
    final getCurrentWeather = getIt<GetCurrentWeather>();
    final result = await getCurrentWeather.execute(query);
    
    return result.fold(
      (failure) => throw failure,
      (weather) => weather,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    final city = ref.read(selectedCityProvider);
    state = await AsyncValue.guard(() => _fetchWeather(city));
    HapticFeedback.lightImpact();
  }

  void setCity(String cityName) {
    ref.read(selectedCityProvider.notifier).set(cityName);
    // Invalidating itself will trigger a rebuild and fetch with the new city
  }
}

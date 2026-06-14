import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../../core/constants/app_constants.dart';
import '../../models/weather_model.dart';

@lazySingleton
class WeatherLocalDataSource {
  Future<Box<String>> get _weatherBox async => Hive.openBox<String>(CacheConstants.weatherBoxName);
  Future<Box<String>> get _favoritesBox async => Hive.openBox<String>(CacheConstants.favoritesBox);

  Future<WeatherModel?> getWeather(String cityKey) async {
    final box = await _weatherBox;
    final jsonStr = box.get(cityKey.toLowerCase());
    if (jsonStr != null) {
      try {
        return WeatherModel.fromJson(jsonDecode(jsonStr));
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  Future<void> cacheWeather(String cityKey, WeatherModel weather) async {
    final box = await _weatherBox;
    await box.put(cityKey.toLowerCase(), jsonEncode(weather.toJson()));
  }

  Future<Box<String>> get _forecastBox async => Hive.openBox<String>(CacheConstants.forecastBoxName);

  Future<List<dynamic>?> getForecast(String cityKey) async {
    final box = await _forecastBox;
    final jsonStr = box.get(cityKey.toLowerCase());
    if (jsonStr != null) {
      try {
        return jsonDecode(jsonStr) as List<dynamic>;
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  Future<void> cacheForecast(String cityKey, List<dynamic> forecastJsonList) async {
    final box = await _forecastBox;
    await box.put(cityKey.toLowerCase(), jsonEncode(forecastJsonList));
  }

  Future<List<String>> getFavorites() async {
    final box = await _favoritesBox;
    return box.values.toList();
  }

  Future<void> toggleFavorite(String cityName) async {
    final box = await _favoritesBox;
    final key = cityName.toLowerCase();
    if (box.containsKey(key)) {
      await box.delete(key);
    } else {
      await box.put(key, cityName);
    }
  }

  Future<void> clearCache() async {
    final weatherBox = await _weatherBox;
    await weatherBox.clear();
  }
}

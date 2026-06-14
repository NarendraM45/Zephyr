import 'package:freezed_annotation/freezed_annotation.dart';
import 'air_quality.dart';
import 'weather_alert.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required String cityName,
    required String region,
    required String country,
    required double lat,
    required double lon,
    required String localtime,
    required double tempC,
    required double tempF,
    required double feelsLikeC,
    required double feelsLikeF,
    required int humidity,
    required double windKph,
    required double windMph,
    required String windDir,
    required int windDegree,
    required String conditionText,
    required int conditionCode,
    required double uvIndex,
    required double visibilityKm,
    required double pressureMb,
    required double precipMm,
    required bool isDay,
    required AirQuality? airQuality,
    required List<WeatherAlert> alerts,
    required DateTime cachedAt,
  }) = _Weather;
}

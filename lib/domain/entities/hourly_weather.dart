import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_weather.freezed.dart';

@freezed
class HourlyWeather with _$HourlyWeather {
  const factory HourlyWeather({
    required String time,
    required double tempC,
    required double tempF,
    required int conditionCode,
    required String conditionText,
    required int chanceOfRain,
    required double windKph,
    required double windMph,
    required int humidity,
    required bool isDay,
  }) = _HourlyWeather;
}

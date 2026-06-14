import 'package:freezed_annotation/freezed_annotation.dart';
import 'hourly_weather.dart';

part 'forecast_day.freezed.dart';

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required String date,
    required double maxTempC,
    required double maxTempF,
    required double minTempC,
    required double minTempF,
    required double avgTempC,
    required double avgTempF,
    required double maxWindKph,
    required double maxWindMph,
    required double totalPrecipMm,
    required int avgHumidity,
    required int dailyChanceOfRain,
    required String conditionText,
    required int conditionCode,
    required double uv,
    required String sunrise,
    required String sunset,
    required String moonPhase,
    required int moonIllumination,
    required List<HourlyWeather> hours,
  }) = _ForecastDay;
}

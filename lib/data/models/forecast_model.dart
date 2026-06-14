import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/forecast_day.dart';
import 'hourly_model.dart';

import '../../../core/utils/safe_json.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
class ForecastDayModel with _$ForecastDayModel {
  const ForecastDayModel._();

  const factory ForecastDayModel({
    required String date,
    required DayModel day,
    required AstroModel astro,
    required List<HourlyModel> hour,
  }) = _ForecastDayModel;

  factory ForecastDayModel.fromJson(Map<String, dynamic> json) => _$ForecastDayModelFromJson(json);

  ForecastDay toEntity() => ForecastDay(
    date: date,
    maxTempC: day.maxtempC,
    maxTempF: day.maxtempF,
    minTempC: day.mintempC,
    minTempF: day.mintempF,
    avgTempC: day.avgtempC,
    avgTempF: day.avgtempF,
    maxWindKph: day.maxwindKph,
    maxWindMph: day.maxwindMph,
    totalPrecipMm: day.totalprecipMm,
    avgHumidity: day.avghumidity.toInt(),
    dailyChanceOfRain: day.dailyChanceOfRain,
    conditionText: day.condition.text,
    conditionCode: day.condition.code,
    uv: day.uv,
    sunrise: astro.sunrise,
    sunset: astro.sunset,
    moonPhase: astro.moonPhase,
    moonIllumination: astro.moonIllumination,
    hours: hour.map((h) => h.toEntity()).toList(),
  );
}

@freezed
class DayModel with _$DayModel {
  const factory DayModel({
    @JsonKey(name: 'maxtemp_c', fromJson: SafeJson.toDouble) required double maxtempC,
    @JsonKey(name: 'maxtemp_f', fromJson: SafeJson.toDouble) required double maxtempF,
    @JsonKey(name: 'mintemp_c', fromJson: SafeJson.toDouble) required double mintempC,
    @JsonKey(name: 'mintemp_f', fromJson: SafeJson.toDouble) required double mintempF,
    @JsonKey(name: 'avgtemp_c', fromJson: SafeJson.toDouble) required double avgtempC,
    @JsonKey(name: 'avgtemp_f', fromJson: SafeJson.toDouble) required double avgtempF,
    @JsonKey(name: 'maxwind_kph', fromJson: SafeJson.toDouble) required double maxwindKph,
    @JsonKey(name: 'maxwind_mph', fromJson: SafeJson.toDouble) required double maxwindMph,
    @JsonKey(name: 'totalprecip_mm', fromJson: SafeJson.toDouble) required double totalprecipMm,
    @JsonKey(fromJson: SafeJson.toDouble) required double avghumidity,
    @JsonKey(name: 'daily_chance_of_rain', fromJson: SafeJson.toInt) required int dailyChanceOfRain,
    required ConditionModel condition,
    @JsonKey(fromJson: SafeJson.toDouble) required double uv,
  }) = _DayModel;

  factory DayModel.fromJson(Map<String, dynamic> json) => _$DayModelFromJson(json);
}

@freezed
class AstroModel with _$AstroModel {
  const factory AstroModel({
    required String sunrise,
    required String sunset,
    @JsonKey(name: 'moon_phase') required String moonPhase,
    @JsonKey(name: 'moon_illumination', fromJson: SafeJson.toInt) required int moonIllumination,
  }) = _AstroModel;

  factory AstroModel.fromJson(Map<String, dynamic> json) => _$AstroModelFromJson(json);
}

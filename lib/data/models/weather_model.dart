import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather.dart';
import 'location_model.dart';
import 'hourly_model.dart';
import 'air_quality_model.dart';
import 'alert_model.dart';

import '../../../core/utils/safe_json.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const WeatherModel._();

  const factory WeatherModel({
    required LocationModel location,
    required CurrentModel current,
    @Default([]) List<AlertModel> alerts,
    required DateTime cachedAt,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  Weather toEntity() => Weather(
    cityName: location.name,
    region: location.region,
    country: location.country,
    lat: location.lat,
    lon: location.lon,
    localtime: location.localtime,
    tempC: current.tempC,
    tempF: current.tempF,
    feelsLikeC: current.feelslikeC,
    feelsLikeF: current.feelslikeF,
    humidity: current.humidity,
    windKph: current.windKph,
    windMph: current.windMph,
    windDir: current.windDir,
    windDegree: current.windDegree,
    conditionText: current.condition.text,
    conditionCode: current.condition.code,
    uvIndex: current.uv,
    visibilityKm: current.visKm,
    pressureMb: current.pressureMb,
    precipMm: current.precipMm,
    isDay: current.isDay == 1,
    airQuality: current.airQuality?.toEntity(),
    alerts: alerts.map((a) => a.toEntity()).toList(),
    cachedAt: cachedAt,
  );
}

@freezed
class CurrentModel with _$CurrentModel {
  const factory CurrentModel({
    @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble) required double tempC,
    @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble) required double tempF,
    @JsonKey(name: 'feelslike_c', fromJson: SafeJson.toDouble) required double feelslikeC,
    @JsonKey(name: 'feelslike_f', fromJson: SafeJson.toDouble) required double feelslikeF,
    @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble) required double windKph,
    @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble) required double windMph,
    @JsonKey(name: 'wind_degree', fromJson: SafeJson.toInt) required int windDegree,
    @JsonKey(name: 'wind_dir') required String windDir,
    @JsonKey(name: 'pressure_mb', fromJson: SafeJson.toDouble) required double pressureMb,
    @JsonKey(name: 'precip_mm', fromJson: SafeJson.toDouble) required double precipMm,
    @JsonKey(fromJson: SafeJson.toInt) required int humidity,
    @JsonKey(name: 'is_day', fromJson: SafeJson.toInt) required int isDay,
    required ConditionModel condition,
    @JsonKey(fromJson: SafeJson.toDouble) required double uv,
    @JsonKey(name: 'vis_km', fromJson: SafeJson.toDouble) required double visKm,
    @JsonKey(name: 'air_quality') AirQualityModel? airQuality,
  }) = _CurrentModel;

  factory CurrentModel.fromJson(Map<String, dynamic> json) => _$CurrentModelFromJson(json);
}

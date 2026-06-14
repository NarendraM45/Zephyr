import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/hourly_weather.dart';

import '../../../core/utils/safe_json.dart';

part 'hourly_model.freezed.dart';
part 'hourly_model.g.dart';

@freezed
class HourlyModel with _$HourlyModel {
  const HourlyModel._();

  const factory HourlyModel({
    required String time,
    @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble) required double tempC,
    @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble) required double tempF,
    required ConditionModel condition,
    @JsonKey(name: 'chance_of_rain', fromJson: SafeJson.toInt) required int chanceOfRain,
    @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble) required double windKph,
    @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble) required double windMph,
    @JsonKey(fromJson: SafeJson.toInt) required int humidity,
    @JsonKey(name: 'is_day', fromJson: SafeJson.toInt) required int isDay,
  }) = _HourlyModel;

  factory HourlyModel.fromJson(Map<String, dynamic> json) => _$HourlyModelFromJson(json);

  HourlyWeather toEntity() => HourlyWeather(
    time: time,
    tempC: tempC,
    tempF: tempF,
    conditionCode: condition.code,
    conditionText: condition.text,
    chanceOfRain: chanceOfRain,
    windKph: windKph,
    windMph: windMph,
    humidity: humidity,
    isDay: isDay == 1,
  );
}

@freezed
class ConditionModel with _$ConditionModel {
  const factory ConditionModel({
    required String text,
    required int code,
    required String icon,
  }) = _ConditionModel;

  factory ConditionModel.fromJson(Map<String, dynamic> json) => _$ConditionModelFromJson(json);
}

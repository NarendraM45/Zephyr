import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/weather_alert.dart';

part 'alert_model.freezed.dart';
part 'alert_model.g.dart';

@freezed
class AlertModel with _$AlertModel {
  const AlertModel._();

  const factory AlertModel({
    @Default('') String headline,
    @Default('') String severity,
    @Default('') String event,
    @Default('') String effective,
    @Default('') String expires,
    @Default('') String desc,
  }) = _AlertModel;

  factory AlertModel.fromJson(Map<String, dynamic> json) => _$AlertModelFromJson(json);

  WeatherAlert toEntity() => WeatherAlert(
    headline: headline,
    severity: severity,
    event: event,
    effective: effective,
    expires: expires,
    desc: desc,
  );
}

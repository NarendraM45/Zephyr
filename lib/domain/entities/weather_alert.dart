import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_alert.freezed.dart';

@freezed
class WeatherAlert with _$WeatherAlert {
  const factory WeatherAlert({
    required String headline,
    required String severity,
    required String event,
    required String effective,
    required String expires,
    required String desc,
  }) = _WeatherAlert;
}

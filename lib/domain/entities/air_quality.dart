import 'package:freezed_annotation/freezed_annotation.dart';

part 'air_quality.freezed.dart';

@freezed
class AirQuality with _$AirQuality {
  const factory AirQuality({
    required double pm25,
    required double pm10,
    required int usEpaIndex,
  }) = _AirQuality;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/air_quality.dart';

part 'air_quality_model.freezed.dart';
part 'air_quality_model.g.dart';

@freezed
class AirQualityModel with _$AirQualityModel {
  const AirQualityModel._();

  const factory AirQualityModel({
    @JsonKey(name: 'pm2_5') required double pm25,
    @JsonKey(name: 'pm10') required double pm10,
    @JsonKey(name: 'us-epa-index') required int usEpaIndex,
  }) = _AirQualityModel;

  factory AirQualityModel.fromJson(Map<String, dynamic> json) => _$AirQualityModelFromJson(json);

  AirQuality toEntity() => AirQuality(
    pm25: pm25,
    pm10: pm10,
    usEpaIndex: usEpaIndex,
  );
}

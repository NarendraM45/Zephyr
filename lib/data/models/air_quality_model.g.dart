// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AirQualityModelImpl _$$AirQualityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AirQualityModelImpl(
      pm25: (json['pm2_5'] as num).toDouble(),
      pm10: (json['pm10'] as num).toDouble(),
      usEpaIndex: (json['us-epa-index'] as num).toInt(),
    );

Map<String, dynamic> _$$AirQualityModelImplToJson(
        _$AirQualityModelImpl instance) =>
    <String, dynamic>{
      'pm2_5': instance.pm25,
      'pm10': instance.pm10,
      'us-epa-index': instance.usEpaIndex,
    };

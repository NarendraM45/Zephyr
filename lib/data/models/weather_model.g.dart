// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
      current: CurrentModel.fromJson(json['current'] as Map<String, dynamic>),
      alerts: (json['alerts'] as List<dynamic>?)
              ?.map((e) => AlertModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'alerts': instance.alerts,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };

_$CurrentModelImpl _$$CurrentModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrentModelImpl(
      tempC: SafeJson.toDouble(json['temp_c']),
      tempF: SafeJson.toDouble(json['temp_f']),
      feelslikeC: SafeJson.toDouble(json['feelslike_c']),
      feelslikeF: SafeJson.toDouble(json['feelslike_f']),
      windKph: SafeJson.toDouble(json['wind_kph']),
      windMph: SafeJson.toDouble(json['wind_mph']),
      windDegree: SafeJson.toInt(json['wind_degree']),
      windDir: json['wind_dir'] as String,
      pressureMb: SafeJson.toDouble(json['pressure_mb']),
      precipMm: SafeJson.toDouble(json['precip_mm']),
      humidity: SafeJson.toInt(json['humidity']),
      isDay: SafeJson.toInt(json['is_day']),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      uv: SafeJson.toDouble(json['uv']),
      visKm: SafeJson.toDouble(json['vis_km']),
      airQuality: json['air_quality'] == null
          ? null
          : AirQualityModel.fromJson(
              json['air_quality'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentModelImplToJson(_$CurrentModelImpl instance) =>
    <String, dynamic>{
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'feelslike_c': instance.feelslikeC,
      'feelslike_f': instance.feelslikeF,
      'wind_kph': instance.windKph,
      'wind_mph': instance.windMph,
      'wind_degree': instance.windDegree,
      'wind_dir': instance.windDir,
      'pressure_mb': instance.pressureMb,
      'precip_mm': instance.precipMm,
      'humidity': instance.humidity,
      'is_day': instance.isDay,
      'condition': instance.condition,
      'uv': instance.uv,
      'vis_km': instance.visKm,
      'air_quality': instance.airQuality,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HourlyModelImpl _$$HourlyModelImplFromJson(Map<String, dynamic> json) =>
    _$HourlyModelImpl(
      time: json['time'] as String,
      tempC: SafeJson.toDouble(json['temp_c']),
      tempF: SafeJson.toDouble(json['temp_f']),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      chanceOfRain: SafeJson.toInt(json['chance_of_rain']),
      windKph: SafeJson.toDouble(json['wind_kph']),
      windMph: SafeJson.toDouble(json['wind_mph']),
      humidity: SafeJson.toInt(json['humidity']),
      isDay: SafeJson.toInt(json['is_day']),
    );

Map<String, dynamic> _$$HourlyModelImplToJson(_$HourlyModelImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temp_c': instance.tempC,
      'temp_f': instance.tempF,
      'condition': instance.condition,
      'chance_of_rain': instance.chanceOfRain,
      'wind_kph': instance.windKph,
      'wind_mph': instance.windMph,
      'humidity': instance.humidity,
      'is_day': instance.isDay,
    };

_$ConditionModelImpl _$$ConditionModelImplFromJson(Map<String, dynamic> json) =>
    _$ConditionModelImpl(
      text: json['text'] as String,
      code: (json['code'] as num).toInt(),
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$ConditionModelImplToJson(
        _$ConditionModelImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'code': instance.code,
      'icon': instance.icon,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayModelImpl _$$ForecastDayModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastDayModelImpl(
      date: json['date'] as String,
      day: DayModel.fromJson(json['day'] as Map<String, dynamic>),
      astro: AstroModel.fromJson(json['astro'] as Map<String, dynamic>),
      hour: (json['hour'] as List<dynamic>)
          .map((e) => HourlyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastDayModelImplToJson(
        _$ForecastDayModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'astro': instance.astro,
      'hour': instance.hour,
    };

_$DayModelImpl _$$DayModelImplFromJson(Map<String, dynamic> json) =>
    _$DayModelImpl(
      maxtempC: SafeJson.toDouble(json['maxtemp_c']),
      maxtempF: SafeJson.toDouble(json['maxtemp_f']),
      mintempC: SafeJson.toDouble(json['mintemp_c']),
      mintempF: SafeJson.toDouble(json['mintemp_f']),
      avgtempC: SafeJson.toDouble(json['avgtemp_c']),
      avgtempF: SafeJson.toDouble(json['avgtemp_f']),
      maxwindKph: SafeJson.toDouble(json['maxwind_kph']),
      maxwindMph: SafeJson.toDouble(json['maxwind_mph']),
      totalprecipMm: SafeJson.toDouble(json['totalprecip_mm']),
      avghumidity: SafeJson.toDouble(json['avghumidity']),
      dailyChanceOfRain: SafeJson.toInt(json['daily_chance_of_rain']),
      condition:
          ConditionModel.fromJson(json['condition'] as Map<String, dynamic>),
      uv: SafeJson.toDouble(json['uv']),
    );

Map<String, dynamic> _$$DayModelImplToJson(_$DayModelImpl instance) =>
    <String, dynamic>{
      'maxtemp_c': instance.maxtempC,
      'maxtemp_f': instance.maxtempF,
      'mintemp_c': instance.mintempC,
      'mintemp_f': instance.mintempF,
      'avgtemp_c': instance.avgtempC,
      'avgtemp_f': instance.avgtempF,
      'maxwind_kph': instance.maxwindKph,
      'maxwind_mph': instance.maxwindMph,
      'totalprecip_mm': instance.totalprecipMm,
      'avghumidity': instance.avghumidity,
      'daily_chance_of_rain': instance.dailyChanceOfRain,
      'condition': instance.condition,
      'uv': instance.uv,
    };

_$AstroModelImpl _$$AstroModelImplFromJson(Map<String, dynamic> json) =>
    _$AstroModelImpl(
      sunrise: json['sunrise'] as String,
      sunset: json['sunset'] as String,
      moonPhase: json['moon_phase'] as String,
      moonIllumination: SafeJson.toInt(json['moon_illumination']),
    );

Map<String, dynamic> _$$AstroModelImplToJson(_$AstroModelImpl instance) =>
    <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moon_phase': instance.moonPhase,
      'moon_illumination': instance.moonIllumination,
    };

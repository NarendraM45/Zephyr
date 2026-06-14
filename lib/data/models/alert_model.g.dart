// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertModelImpl _$$AlertModelImplFromJson(Map<String, dynamic> json) =>
    _$AlertModelImpl(
      headline: json['headline'] as String? ?? '',
      severity: json['severity'] as String? ?? '',
      event: json['event'] as String? ?? '',
      effective: json['effective'] as String? ?? '',
      expires: json['expires'] as String? ?? '',
      desc: json['desc'] as String? ?? '',
    );

Map<String, dynamic> _$$AlertModelImplToJson(_$AlertModelImpl instance) =>
    <String, dynamic>{
      'headline': instance.headline,
      'severity': instance.severity,
      'event': instance.event,
      'effective': instance.effective,
      'expires': instance.expires,
      'desc': instance.desc,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rainviewer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RainviewerResponseImpl _$$RainviewerResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RainviewerResponseImpl(
      version: json['version'] as String,
      generated: (json['generated'] as num).toInt(),
      host: json['host'] as String,
      radar: RainviewerRadar.fromJson(json['radar'] as Map<String, dynamic>),
      satellite: RainviewerSatellite.fromJson(
          json['satellite'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RainviewerResponseImplToJson(
        _$RainviewerResponseImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'generated': instance.generated,
      'host': instance.host,
      'radar': instance.radar,
      'satellite': instance.satellite,
    };

_$RainviewerRadarImpl _$$RainviewerRadarImplFromJson(
        Map<String, dynamic> json) =>
    _$RainviewerRadarImpl(
      past: (json['past'] as List<dynamic>)
          .map((e) => RainviewerFrame.fromJson(e as Map<String, dynamic>))
          .toList(),
      nowcast: (json['nowcast'] as List<dynamic>)
          .map((e) => RainviewerFrame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RainviewerRadarImplToJson(
        _$RainviewerRadarImpl instance) =>
    <String, dynamic>{
      'past': instance.past,
      'nowcast': instance.nowcast,
    };

_$RainviewerSatelliteImpl _$$RainviewerSatelliteImplFromJson(
        Map<String, dynamic> json) =>
    _$RainviewerSatelliteImpl(
      infrared: (json['infrared'] as List<dynamic>)
          .map((e) => RainviewerFrame.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RainviewerSatelliteImplToJson(
        _$RainviewerSatelliteImpl instance) =>
    <String, dynamic>{
      'infrared': instance.infrared,
    };

_$RainviewerFrameImpl _$$RainviewerFrameImplFromJson(
        Map<String, dynamic> json) =>
    _$RainviewerFrameImpl(
      time: (json['time'] as num).toInt(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$$RainviewerFrameImplToJson(
        _$RainviewerFrameImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'path': instance.path,
    };

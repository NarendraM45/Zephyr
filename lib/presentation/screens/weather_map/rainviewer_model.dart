import 'package:freezed_annotation/freezed_annotation.dart';

part 'rainviewer_model.freezed.dart';
part 'rainviewer_model.g.dart';

@freezed
class RainviewerResponse with _$RainviewerResponse {
  const factory RainviewerResponse({
    required String version,
    required int generated,
    required String host,
    required RainviewerRadar radar,
    required RainviewerSatellite satellite,
  }) = _RainviewerResponse;

  factory RainviewerResponse.fromJson(Map<String, dynamic> json) => _$RainviewerResponseFromJson(json);
}

@freezed
class RainviewerRadar with _$RainviewerRadar {
  const factory RainviewerRadar({
    required List<RainviewerFrame> past,
    required List<RainviewerFrame> nowcast,
  }) = _RainviewerRadar;

  factory RainviewerRadar.fromJson(Map<String, dynamic> json) => _$RainviewerRadarFromJson(json);
}

@freezed
class RainviewerSatellite with _$RainviewerSatellite {
  const factory RainviewerSatellite({
    required List<RainviewerFrame> infrared,
  }) = _RainviewerSatellite;

  factory RainviewerSatellite.fromJson(Map<String, dynamic> json) => _$RainviewerSatelliteFromJson(json);
}

@freezed
class RainviewerFrame with _$RainviewerFrame {
  const factory RainviewerFrame({
    required int time,
    required String path,
  }) = _RainviewerFrame;

  factory RainviewerFrame.fromJson(Map<String, dynamic> json) => _$RainviewerFrameFromJson(json);
}

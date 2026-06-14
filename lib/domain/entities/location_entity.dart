import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_entity.freezed.dart';

@freezed
class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    required String localtime,
    required String tzId,
  }) = _LocationEntity;
}

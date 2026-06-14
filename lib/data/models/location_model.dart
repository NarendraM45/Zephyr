import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/location_entity.dart';

part 'location_model.freezed.dart';
part 'location_model.g.dart';

@freezed
class LocationModel with _$LocationModel {
  const LocationModel._();

  const factory LocationModel({
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
    @JsonKey(name: 'tz_id') required String tzId,
    required String localtime,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) => _$LocationModelFromJson(json);

  LocationEntity toEntity() => LocationEntity(
    name: name,
    region: region,
    country: country,
    lat: lat,
    lon: lon,
    tzId: tzId,
    localtime: localtime,
  );
}

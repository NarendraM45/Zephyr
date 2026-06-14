import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/search_result.dart';

part 'search_result_model.freezed.dart';
part 'search_result_model.g.dart';

@freezed
class SearchResultModel with _$SearchResultModel {
  const SearchResultModel._();

  const factory SearchResultModel({
    required int id,
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
  }) = _SearchResultModel;

  factory SearchResultModel.fromJson(Map<String, dynamic> json) => _$SearchResultModelFromJson(json);

  SearchResult toEntity() => SearchResult(
    id: id,
    name: name,
    region: region,
    country: country,
    lat: lat,
    lon: lon,
  );
}

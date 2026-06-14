import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    required int id,
    required String name,
    required String region,
    required String country,
    required double lat,
    required double lon,
  }) = _SearchResult;
}

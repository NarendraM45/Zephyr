import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../entities/search_result.dart';
import '../repositories/i_weather_repository.dart';

@injectable
class SearchLocations {
  const SearchLocations(this._repository);
  final IWeatherRepository _repository;

  Future<Either<Failure, List<SearchResult>>> execute(String query) =>
    _repository.searchLocations(query);
}

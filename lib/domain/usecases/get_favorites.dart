import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../repositories/i_weather_repository.dart';

@injectable
class GetFavorites {
  const GetFavorites(this._repository);
  final IWeatherRepository _repository;

  Future<Either<Failure, List<String>>> execute() =>
    _repository.getFavorites();
}

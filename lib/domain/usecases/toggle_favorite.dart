import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../repositories/i_weather_repository.dart';

@injectable
class ToggleFavorite {
  const ToggleFavorite(this._repository);
  final IWeatherRepository _repository;

  Future<Either<Failure, void>> execute(String cityName) =>
    _repository.toggleFavorite(cityName);
}

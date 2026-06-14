import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../repositories/i_weather_repository.dart';

@injectable
class ClearCache {
  const ClearCache(this._repository);
  final IWeatherRepository _repository;

  Future<Either<Failure, void>> execute() =>
    _repository.clearCache();
}

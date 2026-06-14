import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../entities/weather.dart';
import '../repositories/i_weather_repository.dart';

@injectable
class GetCurrentWeather {
  const GetCurrentWeather(this._repository);
  final IWeatherRepository _repository;

  Future<Either<Failure, Weather>> execute(String query) =>
    _repository.getCurrentWeather(query);
}

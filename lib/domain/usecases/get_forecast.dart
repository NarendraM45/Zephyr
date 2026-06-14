import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../entities/forecast_day.dart';
import '../repositories/i_weather_repository.dart';

@injectable
class GetForecast {
  const GetForecast(this._repository);
  final IWeatherRepository _repository;

  Future<Either<Failure, List<ForecastDay>>> execute(String query, {int days = 7}) =>
    _repository.getForecast(query, days: days);
}

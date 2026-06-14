import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../core/errors/failures.dart';
import '../repositories/i_weather_repository.dart';

@injectable
class GetDeviceLocation {
  const GetDeviceLocation(this._repository);
  final IWeatherRepository _repository;

  Future<Either<Failure, String>> execute() =>
    _repository.getDeviceLocationQuery();
}

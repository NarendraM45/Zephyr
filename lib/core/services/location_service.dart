import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import '../errors/failures.dart';
import 'package:fpdart/fpdart.dart';

@injectable
class LocationService {
  Future<Either<Failure, Position>> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return const Left(Failure.location(message: 'Location services are disabled.'));
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return const Left(Failure.location(message: 'Location permissions are denied.'));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return const Left(Failure.location(message: 'Location permissions are permanently denied, we cannot request permissions.'));
    }

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      return Right(position);
    } catch (e) {
      return Left(Failure.location(message: 'Failed to get location: $e'));
    }
  }
}

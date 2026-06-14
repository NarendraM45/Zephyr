import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/usecases/get_device_location.dart';
import '../../injection_container.dart';

part 'location_provider.g.dart';

@riverpod
class LocationNotifier extends _$LocationNotifier {
  @override
  FutureOr<String?> build() async {
    return null; // Don't fetch by default
  }

  Future<String?> fetchDeviceLocation() async {
    state = const AsyncLoading();
    final getDeviceLocation = getIt<GetDeviceLocation>();
    final result = await getDeviceLocation.execute();
    
    return result.fold(
      (failure) {
        state = AsyncError(failure, StackTrace.current);
        return null;
      },
      (query) {
        state = AsyncData(query);
        return query;
      },
    );
  }
}

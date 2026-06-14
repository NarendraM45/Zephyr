import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/forecast_day.dart';
import '../../domain/usecases/get_forecast.dart';
import '../../injection_container.dart';
import 'weather_provider.dart';

part 'forecast_provider.g.dart';

@riverpod
class ForecastNotifier extends _$ForecastNotifier {
  @override
  FutureOr<List<ForecastDay>> build() async {
    final city = ref.watch(selectedCityProvider);
    return _fetchForecast(city);
  }

  Future<List<ForecastDay>> _fetchForecast(String query) async {
    final getForecast = getIt<GetForecast>();
    final result = await getForecast.execute(query);
    
    return result.fold(
      (failure) => throw failure,
      (forecasts) => forecasts,
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    final city = ref.read(selectedCityProvider);
    state = await AsyncValue.guard(() => _fetchForecast(city));
  }
}

import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/weather.dart';
import '../../domain/usecases/get_favorites.dart';
import '../../domain/usecases/toggle_favorite.dart';
import '../../domain/usecases/get_current_weather.dart';
import '../../injection_container.dart';

part 'favorites_provider.g.dart';

@riverpod
class FavoritesNotifier extends _$FavoritesNotifier {
  Timer? _refreshTimer;

  @override
  FutureOr<List<Weather>> build() async {
    _startRefreshTimer();
    return _fetchFavorites();
  }

  Future<List<Weather>> _fetchFavorites() async {
    final getFavorites = getIt<GetFavorites>();
    final getCurrentWeather = getIt<GetCurrentWeather>();
    
    final result = await getFavorites.execute();
    return result.fold(
      (failure) => throw failure,
      (cities) async {
        final List<Weather> weathers = [];
        for (final city in cities) {
          final weatherResult = await getCurrentWeather.execute(city);
          weatherResult.fold(
            (l) => null, // Ignore failures for individual cities in list
            (r) => weathers.add(r),
          );
        }
        return weathers;
      },
    );
  }

  void _startRefreshTimer() {
    _refreshTimer?.cancel();
    _refreshTimer = Timer.periodic(const Duration(minutes: 5), (_) {
      refresh();
    });
    
    ref.onDispose(() {
      _refreshTimer?.cancel();
    });
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchFavorites());
  }

  Future<void> toggleFavorite(String cityName) async {
    final toggle = getIt<ToggleFavorite>();
    await toggle.execute(cityName);
    await refresh();
  }
}

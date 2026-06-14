import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/search_result.dart';
import '../../domain/usecases/search_locations.dart';
import '../../injection_container.dart';

part 'search_provider.g.dart';

@riverpod
class SearchNotifier extends _$SearchNotifier {
  Timer? _debounce;

  @override
  AsyncValue<List<SearchResult>> build() {
    ref.onDispose(() {
      _debounce?.cancel();
    });
    return const AsyncData([]);
  }

  void search(String query) {
    _debounce?.cancel();
    if (query.trim().length < 2) {
      state = const AsyncData([]);
      return;
    }
    
    _debounce = Timer(const Duration(milliseconds: 400), () async {
      state = const AsyncLoading();
      final searchLocations = getIt<SearchLocations>();
      final result = await searchLocations.execute(query);
      
      state = result.fold(
        (f) => AsyncError(f, StackTrace.current),
        AsyncData.new,
      );
    });
  }
}

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'rainviewer_model.dart';

part 'weather_map_provider.freezed.dart';
part 'weather_map_provider.g.dart';

enum MapLayer { radar, satellite, wind, temperature, pressure }

@freezed
class WeatherMapState with _$WeatherMapState {
  const factory WeatherMapState({
    @Default(MapLayer.radar) MapLayer activeLayer,
    @Default(null) RainviewerResponse? rainviewerData,
    @Default([]) List<RainviewerFrame> frames,
    @Default(0) int currentIndex,
    @Default(false) bool isPlaying,
    @Default(false) bool isLoading,
    String? error,
  }) = _WeatherMapState;
}

@riverpod
class WeatherMapNotifier extends _$WeatherMapNotifier {
  Timer? _playbackTimer;
  final Dio _dio = Dio();

  @override
  WeatherMapState build() {
    ref.onDispose(() {
      _playbackTimer?.cancel();
    });
    Future.microtask(() => _fetchRainviewerData());
    return const WeatherMapState(isLoading: true);
  }

  Future<void> _fetchRainviewerData() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _dio.get('https://api.rainviewer.com/public/weather-maps.json');
      final data = RainviewerResponse.fromJson(response.data);
      
      // Combine past and nowcast frames for the timeline
      final allFrames = [...data.radar.past, ...data.radar.nowcast];
      
      state = state.copyWith(
        isLoading: false,
        rainviewerData: data,
        frames: allFrames,
        currentIndex: allFrames.isNotEmpty ? allFrames.length - 1 : 0, // Default to most recent past frame
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void setLayer(MapLayer layer) {
    if (state.activeLayer == layer) return;
    
    // If switching to satellite, we need to use satellite frames
    if (layer == MapLayer.satellite && state.rainviewerData != null) {
       final frames = state.rainviewerData!.satellite.infrared;
       state = state.copyWith(
         activeLayer: layer,
         frames: frames,
         currentIndex: frames.isNotEmpty ? frames.length - 1 : 0,
       );
    } else if (layer == MapLayer.radar && state.rainviewerData != null) {
       final frames = [...state.rainviewerData!.radar.past, ...state.rainviewerData!.radar.nowcast];
       state = state.copyWith(
         activeLayer: layer,
         frames: frames,
         currentIndex: frames.isNotEmpty ? frames.length - 1 : 0,
       );
    } else {
       state = state.copyWith(activeLayer: layer);
    }
  }

  void setIndex(int index) {
    if (index >= 0 && index < state.frames.length) {
      state = state.copyWith(currentIndex: index);
    }
  }

  void togglePlayback() {
    if (state.frames.isEmpty) return;
    
    if (state.isPlaying) {
      _playbackTimer?.cancel();
      state = state.copyWith(isPlaying: false);
    } else {
      state = state.copyWith(isPlaying: true);
      
      // If at end, loop back to start immediately
      if (state.currentIndex == state.frames.length - 1) {
        state = state.copyWith(currentIndex: 0);
      }
      
      _playbackTimer = Timer.periodic(const Duration(milliseconds: 600), (timer) {
        if (!state.isPlaying) {
          timer.cancel();
          return;
        }
        
        int nextIndex = state.currentIndex + 1;
        if (nextIndex >= state.frames.length) {
          nextIndex = 0; // Loop back
        }
        state = state.copyWith(currentIndex: nextIndex);
      });
    }
  }
}

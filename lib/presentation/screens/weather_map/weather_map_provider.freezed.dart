// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_map_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherMapState {
  MapLayer get activeLayer => throw _privateConstructorUsedError;
  RainviewerResponse? get rainviewerData => throw _privateConstructorUsedError;
  List<RainviewerFrame> get frames => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of WeatherMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherMapStateCopyWith<WeatherMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherMapStateCopyWith<$Res> {
  factory $WeatherMapStateCopyWith(
          WeatherMapState value, $Res Function(WeatherMapState) then) =
      _$WeatherMapStateCopyWithImpl<$Res, WeatherMapState>;
  @useResult
  $Res call(
      {MapLayer activeLayer,
      RainviewerResponse? rainviewerData,
      List<RainviewerFrame> frames,
      int currentIndex,
      bool isPlaying,
      bool isLoading,
      String? error});

  $RainviewerResponseCopyWith<$Res>? get rainviewerData;
}

/// @nodoc
class _$WeatherMapStateCopyWithImpl<$Res, $Val extends WeatherMapState>
    implements $WeatherMapStateCopyWith<$Res> {
  _$WeatherMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeLayer = null,
    Object? rainviewerData = freezed,
    Object? frames = null,
    Object? currentIndex = null,
    Object? isPlaying = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      activeLayer: null == activeLayer
          ? _value.activeLayer
          : activeLayer // ignore: cast_nullable_to_non_nullable
              as MapLayer,
      rainviewerData: freezed == rainviewerData
          ? _value.rainviewerData
          : rainviewerData // ignore: cast_nullable_to_non_nullable
              as RainviewerResponse?,
      frames: null == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<RainviewerFrame>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of WeatherMapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RainviewerResponseCopyWith<$Res>? get rainviewerData {
    if (_value.rainviewerData == null) {
      return null;
    }

    return $RainviewerResponseCopyWith<$Res>(_value.rainviewerData!, (value) {
      return _then(_value.copyWith(rainviewerData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherMapStateImplCopyWith<$Res>
    implements $WeatherMapStateCopyWith<$Res> {
  factory _$$WeatherMapStateImplCopyWith(_$WeatherMapStateImpl value,
          $Res Function(_$WeatherMapStateImpl) then) =
      __$$WeatherMapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MapLayer activeLayer,
      RainviewerResponse? rainviewerData,
      List<RainviewerFrame> frames,
      int currentIndex,
      bool isPlaying,
      bool isLoading,
      String? error});

  @override
  $RainviewerResponseCopyWith<$Res>? get rainviewerData;
}

/// @nodoc
class __$$WeatherMapStateImplCopyWithImpl<$Res>
    extends _$WeatherMapStateCopyWithImpl<$Res, _$WeatherMapStateImpl>
    implements _$$WeatherMapStateImplCopyWith<$Res> {
  __$$WeatherMapStateImplCopyWithImpl(
      _$WeatherMapStateImpl _value, $Res Function(_$WeatherMapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeLayer = null,
    Object? rainviewerData = freezed,
    Object? frames = null,
    Object? currentIndex = null,
    Object? isPlaying = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$WeatherMapStateImpl(
      activeLayer: null == activeLayer
          ? _value.activeLayer
          : activeLayer // ignore: cast_nullable_to_non_nullable
              as MapLayer,
      rainviewerData: freezed == rainviewerData
          ? _value.rainviewerData
          : rainviewerData // ignore: cast_nullable_to_non_nullable
              as RainviewerResponse?,
      frames: null == frames
          ? _value._frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<RainviewerFrame>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WeatherMapStateImpl implements _WeatherMapState {
  const _$WeatherMapStateImpl(
      {this.activeLayer = MapLayer.radar,
      this.rainviewerData = null,
      final List<RainviewerFrame> frames = const [],
      this.currentIndex = 0,
      this.isPlaying = false,
      this.isLoading = false,
      this.error})
      : _frames = frames;

  @override
  @JsonKey()
  final MapLayer activeLayer;
  @override
  @JsonKey()
  final RainviewerResponse? rainviewerData;
  final List<RainviewerFrame> _frames;
  @override
  @JsonKey()
  List<RainviewerFrame> get frames {
    if (_frames is EqualUnmodifiableListView) return _frames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frames);
  }

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'WeatherMapState(activeLayer: $activeLayer, rainviewerData: $rainviewerData, frames: $frames, currentIndex: $currentIndex, isPlaying: $isPlaying, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherMapStateImpl &&
            (identical(other.activeLayer, activeLayer) ||
                other.activeLayer == activeLayer) &&
            (identical(other.rainviewerData, rainviewerData) ||
                other.rainviewerData == rainviewerData) &&
            const DeepCollectionEquality().equals(other._frames, _frames) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      activeLayer,
      rainviewerData,
      const DeepCollectionEquality().hash(_frames),
      currentIndex,
      isPlaying,
      isLoading,
      error);

  /// Create a copy of WeatherMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherMapStateImplCopyWith<_$WeatherMapStateImpl> get copyWith =>
      __$$WeatherMapStateImplCopyWithImpl<_$WeatherMapStateImpl>(
          this, _$identity);
}

abstract class _WeatherMapState implements WeatherMapState {
  const factory _WeatherMapState(
      {final MapLayer activeLayer,
      final RainviewerResponse? rainviewerData,
      final List<RainviewerFrame> frames,
      final int currentIndex,
      final bool isPlaying,
      final bool isLoading,
      final String? error}) = _$WeatherMapStateImpl;

  @override
  MapLayer get activeLayer;
  @override
  RainviewerResponse? get rainviewerData;
  @override
  List<RainviewerFrame> get frames;
  @override
  int get currentIndex;
  @override
  bool get isPlaying;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of WeatherMapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherMapStateImplCopyWith<_$WeatherMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

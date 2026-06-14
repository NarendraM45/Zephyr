// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rainviewer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RainviewerResponse _$RainviewerResponseFromJson(Map<String, dynamic> json) {
  return _RainviewerResponse.fromJson(json);
}

/// @nodoc
mixin _$RainviewerResponse {
  String get version => throw _privateConstructorUsedError;
  int get generated => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  RainviewerRadar get radar => throw _privateConstructorUsedError;
  RainviewerSatellite get satellite => throw _privateConstructorUsedError;

  /// Serializes this RainviewerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RainviewerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RainviewerResponseCopyWith<RainviewerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainviewerResponseCopyWith<$Res> {
  factory $RainviewerResponseCopyWith(
          RainviewerResponse value, $Res Function(RainviewerResponse) then) =
      _$RainviewerResponseCopyWithImpl<$Res, RainviewerResponse>;
  @useResult
  $Res call(
      {String version,
      int generated,
      String host,
      RainviewerRadar radar,
      RainviewerSatellite satellite});

  $RainviewerRadarCopyWith<$Res> get radar;
  $RainviewerSatelliteCopyWith<$Res> get satellite;
}

/// @nodoc
class _$RainviewerResponseCopyWithImpl<$Res, $Val extends RainviewerResponse>
    implements $RainviewerResponseCopyWith<$Res> {
  _$RainviewerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RainviewerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? generated = null,
    Object? host = null,
    Object? radar = null,
    Object? satellite = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      generated: null == generated
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as int,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      radar: null == radar
          ? _value.radar
          : radar // ignore: cast_nullable_to_non_nullable
              as RainviewerRadar,
      satellite: null == satellite
          ? _value.satellite
          : satellite // ignore: cast_nullable_to_non_nullable
              as RainviewerSatellite,
    ) as $Val);
  }

  /// Create a copy of RainviewerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RainviewerRadarCopyWith<$Res> get radar {
    return $RainviewerRadarCopyWith<$Res>(_value.radar, (value) {
      return _then(_value.copyWith(radar: value) as $Val);
    });
  }

  /// Create a copy of RainviewerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RainviewerSatelliteCopyWith<$Res> get satellite {
    return $RainviewerSatelliteCopyWith<$Res>(_value.satellite, (value) {
      return _then(_value.copyWith(satellite: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RainviewerResponseImplCopyWith<$Res>
    implements $RainviewerResponseCopyWith<$Res> {
  factory _$$RainviewerResponseImplCopyWith(_$RainviewerResponseImpl value,
          $Res Function(_$RainviewerResponseImpl) then) =
      __$$RainviewerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String version,
      int generated,
      String host,
      RainviewerRadar radar,
      RainviewerSatellite satellite});

  @override
  $RainviewerRadarCopyWith<$Res> get radar;
  @override
  $RainviewerSatelliteCopyWith<$Res> get satellite;
}

/// @nodoc
class __$$RainviewerResponseImplCopyWithImpl<$Res>
    extends _$RainviewerResponseCopyWithImpl<$Res, _$RainviewerResponseImpl>
    implements _$$RainviewerResponseImplCopyWith<$Res> {
  __$$RainviewerResponseImplCopyWithImpl(_$RainviewerResponseImpl _value,
      $Res Function(_$RainviewerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RainviewerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? generated = null,
    Object? host = null,
    Object? radar = null,
    Object? satellite = null,
  }) {
    return _then(_$RainviewerResponseImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      generated: null == generated
          ? _value.generated
          : generated // ignore: cast_nullable_to_non_nullable
              as int,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      radar: null == radar
          ? _value.radar
          : radar // ignore: cast_nullable_to_non_nullable
              as RainviewerRadar,
      satellite: null == satellite
          ? _value.satellite
          : satellite // ignore: cast_nullable_to_non_nullable
              as RainviewerSatellite,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RainviewerResponseImpl implements _RainviewerResponse {
  const _$RainviewerResponseImpl(
      {required this.version,
      required this.generated,
      required this.host,
      required this.radar,
      required this.satellite});

  factory _$RainviewerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainviewerResponseImplFromJson(json);

  @override
  final String version;
  @override
  final int generated;
  @override
  final String host;
  @override
  final RainviewerRadar radar;
  @override
  final RainviewerSatellite satellite;

  @override
  String toString() {
    return 'RainviewerResponse(version: $version, generated: $generated, host: $host, radar: $radar, satellite: $satellite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainviewerResponseImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.generated, generated) ||
                other.generated == generated) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.radar, radar) || other.radar == radar) &&
            (identical(other.satellite, satellite) ||
                other.satellite == satellite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, version, generated, host, radar, satellite);

  /// Create a copy of RainviewerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RainviewerResponseImplCopyWith<_$RainviewerResponseImpl> get copyWith =>
      __$$RainviewerResponseImplCopyWithImpl<_$RainviewerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainviewerResponseImplToJson(
      this,
    );
  }
}

abstract class _RainviewerResponse implements RainviewerResponse {
  const factory _RainviewerResponse(
      {required final String version,
      required final int generated,
      required final String host,
      required final RainviewerRadar radar,
      required final RainviewerSatellite satellite}) = _$RainviewerResponseImpl;

  factory _RainviewerResponse.fromJson(Map<String, dynamic> json) =
      _$RainviewerResponseImpl.fromJson;

  @override
  String get version;
  @override
  int get generated;
  @override
  String get host;
  @override
  RainviewerRadar get radar;
  @override
  RainviewerSatellite get satellite;

  /// Create a copy of RainviewerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RainviewerResponseImplCopyWith<_$RainviewerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RainviewerRadar _$RainviewerRadarFromJson(Map<String, dynamic> json) {
  return _RainviewerRadar.fromJson(json);
}

/// @nodoc
mixin _$RainviewerRadar {
  List<RainviewerFrame> get past => throw _privateConstructorUsedError;
  List<RainviewerFrame> get nowcast => throw _privateConstructorUsedError;

  /// Serializes this RainviewerRadar to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RainviewerRadar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RainviewerRadarCopyWith<RainviewerRadar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainviewerRadarCopyWith<$Res> {
  factory $RainviewerRadarCopyWith(
          RainviewerRadar value, $Res Function(RainviewerRadar) then) =
      _$RainviewerRadarCopyWithImpl<$Res, RainviewerRadar>;
  @useResult
  $Res call({List<RainviewerFrame> past, List<RainviewerFrame> nowcast});
}

/// @nodoc
class _$RainviewerRadarCopyWithImpl<$Res, $Val extends RainviewerRadar>
    implements $RainviewerRadarCopyWith<$Res> {
  _$RainviewerRadarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RainviewerRadar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? past = null,
    Object? nowcast = null,
  }) {
    return _then(_value.copyWith(
      past: null == past
          ? _value.past
          : past // ignore: cast_nullable_to_non_nullable
              as List<RainviewerFrame>,
      nowcast: null == nowcast
          ? _value.nowcast
          : nowcast // ignore: cast_nullable_to_non_nullable
              as List<RainviewerFrame>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RainviewerRadarImplCopyWith<$Res>
    implements $RainviewerRadarCopyWith<$Res> {
  factory _$$RainviewerRadarImplCopyWith(_$RainviewerRadarImpl value,
          $Res Function(_$RainviewerRadarImpl) then) =
      __$$RainviewerRadarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RainviewerFrame> past, List<RainviewerFrame> nowcast});
}

/// @nodoc
class __$$RainviewerRadarImplCopyWithImpl<$Res>
    extends _$RainviewerRadarCopyWithImpl<$Res, _$RainviewerRadarImpl>
    implements _$$RainviewerRadarImplCopyWith<$Res> {
  __$$RainviewerRadarImplCopyWithImpl(
      _$RainviewerRadarImpl _value, $Res Function(_$RainviewerRadarImpl) _then)
      : super(_value, _then);

  /// Create a copy of RainviewerRadar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? past = null,
    Object? nowcast = null,
  }) {
    return _then(_$RainviewerRadarImpl(
      past: null == past
          ? _value._past
          : past // ignore: cast_nullable_to_non_nullable
              as List<RainviewerFrame>,
      nowcast: null == nowcast
          ? _value._nowcast
          : nowcast // ignore: cast_nullable_to_non_nullable
              as List<RainviewerFrame>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RainviewerRadarImpl implements _RainviewerRadar {
  const _$RainviewerRadarImpl(
      {required final List<RainviewerFrame> past,
      required final List<RainviewerFrame> nowcast})
      : _past = past,
        _nowcast = nowcast;

  factory _$RainviewerRadarImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainviewerRadarImplFromJson(json);

  final List<RainviewerFrame> _past;
  @override
  List<RainviewerFrame> get past {
    if (_past is EqualUnmodifiableListView) return _past;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_past);
  }

  final List<RainviewerFrame> _nowcast;
  @override
  List<RainviewerFrame> get nowcast {
    if (_nowcast is EqualUnmodifiableListView) return _nowcast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowcast);
  }

  @override
  String toString() {
    return 'RainviewerRadar(past: $past, nowcast: $nowcast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainviewerRadarImpl &&
            const DeepCollectionEquality().equals(other._past, _past) &&
            const DeepCollectionEquality().equals(other._nowcast, _nowcast));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_past),
      const DeepCollectionEquality().hash(_nowcast));

  /// Create a copy of RainviewerRadar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RainviewerRadarImplCopyWith<_$RainviewerRadarImpl> get copyWith =>
      __$$RainviewerRadarImplCopyWithImpl<_$RainviewerRadarImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainviewerRadarImplToJson(
      this,
    );
  }
}

abstract class _RainviewerRadar implements RainviewerRadar {
  const factory _RainviewerRadar(
      {required final List<RainviewerFrame> past,
      required final List<RainviewerFrame> nowcast}) = _$RainviewerRadarImpl;

  factory _RainviewerRadar.fromJson(Map<String, dynamic> json) =
      _$RainviewerRadarImpl.fromJson;

  @override
  List<RainviewerFrame> get past;
  @override
  List<RainviewerFrame> get nowcast;

  /// Create a copy of RainviewerRadar
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RainviewerRadarImplCopyWith<_$RainviewerRadarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RainviewerSatellite _$RainviewerSatelliteFromJson(Map<String, dynamic> json) {
  return _RainviewerSatellite.fromJson(json);
}

/// @nodoc
mixin _$RainviewerSatellite {
  List<RainviewerFrame> get infrared => throw _privateConstructorUsedError;

  /// Serializes this RainviewerSatellite to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RainviewerSatellite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RainviewerSatelliteCopyWith<RainviewerSatellite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainviewerSatelliteCopyWith<$Res> {
  factory $RainviewerSatelliteCopyWith(
          RainviewerSatellite value, $Res Function(RainviewerSatellite) then) =
      _$RainviewerSatelliteCopyWithImpl<$Res, RainviewerSatellite>;
  @useResult
  $Res call({List<RainviewerFrame> infrared});
}

/// @nodoc
class _$RainviewerSatelliteCopyWithImpl<$Res, $Val extends RainviewerSatellite>
    implements $RainviewerSatelliteCopyWith<$Res> {
  _$RainviewerSatelliteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RainviewerSatellite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? infrared = null,
  }) {
    return _then(_value.copyWith(
      infrared: null == infrared
          ? _value.infrared
          : infrared // ignore: cast_nullable_to_non_nullable
              as List<RainviewerFrame>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RainviewerSatelliteImplCopyWith<$Res>
    implements $RainviewerSatelliteCopyWith<$Res> {
  factory _$$RainviewerSatelliteImplCopyWith(_$RainviewerSatelliteImpl value,
          $Res Function(_$RainviewerSatelliteImpl) then) =
      __$$RainviewerSatelliteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RainviewerFrame> infrared});
}

/// @nodoc
class __$$RainviewerSatelliteImplCopyWithImpl<$Res>
    extends _$RainviewerSatelliteCopyWithImpl<$Res, _$RainviewerSatelliteImpl>
    implements _$$RainviewerSatelliteImplCopyWith<$Res> {
  __$$RainviewerSatelliteImplCopyWithImpl(_$RainviewerSatelliteImpl _value,
      $Res Function(_$RainviewerSatelliteImpl) _then)
      : super(_value, _then);

  /// Create a copy of RainviewerSatellite
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? infrared = null,
  }) {
    return _then(_$RainviewerSatelliteImpl(
      infrared: null == infrared
          ? _value._infrared
          : infrared // ignore: cast_nullable_to_non_nullable
              as List<RainviewerFrame>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RainviewerSatelliteImpl implements _RainviewerSatellite {
  const _$RainviewerSatelliteImpl(
      {required final List<RainviewerFrame> infrared})
      : _infrared = infrared;

  factory _$RainviewerSatelliteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainviewerSatelliteImplFromJson(json);

  final List<RainviewerFrame> _infrared;
  @override
  List<RainviewerFrame> get infrared {
    if (_infrared is EqualUnmodifiableListView) return _infrared;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_infrared);
  }

  @override
  String toString() {
    return 'RainviewerSatellite(infrared: $infrared)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainviewerSatelliteImpl &&
            const DeepCollectionEquality().equals(other._infrared, _infrared));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_infrared));

  /// Create a copy of RainviewerSatellite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RainviewerSatelliteImplCopyWith<_$RainviewerSatelliteImpl> get copyWith =>
      __$$RainviewerSatelliteImplCopyWithImpl<_$RainviewerSatelliteImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainviewerSatelliteImplToJson(
      this,
    );
  }
}

abstract class _RainviewerSatellite implements RainviewerSatellite {
  const factory _RainviewerSatellite(
          {required final List<RainviewerFrame> infrared}) =
      _$RainviewerSatelliteImpl;

  factory _RainviewerSatellite.fromJson(Map<String, dynamic> json) =
      _$RainviewerSatelliteImpl.fromJson;

  @override
  List<RainviewerFrame> get infrared;

  /// Create a copy of RainviewerSatellite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RainviewerSatelliteImplCopyWith<_$RainviewerSatelliteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RainviewerFrame _$RainviewerFrameFromJson(Map<String, dynamic> json) {
  return _RainviewerFrame.fromJson(json);
}

/// @nodoc
mixin _$RainviewerFrame {
  int get time => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// Serializes this RainviewerFrame to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RainviewerFrame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RainviewerFrameCopyWith<RainviewerFrame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainviewerFrameCopyWith<$Res> {
  factory $RainviewerFrameCopyWith(
          RainviewerFrame value, $Res Function(RainviewerFrame) then) =
      _$RainviewerFrameCopyWithImpl<$Res, RainviewerFrame>;
  @useResult
  $Res call({int time, String path});
}

/// @nodoc
class _$RainviewerFrameCopyWithImpl<$Res, $Val extends RainviewerFrame>
    implements $RainviewerFrameCopyWith<$Res> {
  _$RainviewerFrameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RainviewerFrame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RainviewerFrameImplCopyWith<$Res>
    implements $RainviewerFrameCopyWith<$Res> {
  factory _$$RainviewerFrameImplCopyWith(_$RainviewerFrameImpl value,
          $Res Function(_$RainviewerFrameImpl) then) =
      __$$RainviewerFrameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int time, String path});
}

/// @nodoc
class __$$RainviewerFrameImplCopyWithImpl<$Res>
    extends _$RainviewerFrameCopyWithImpl<$Res, _$RainviewerFrameImpl>
    implements _$$RainviewerFrameImplCopyWith<$Res> {
  __$$RainviewerFrameImplCopyWithImpl(
      _$RainviewerFrameImpl _value, $Res Function(_$RainviewerFrameImpl) _then)
      : super(_value, _then);

  /// Create a copy of RainviewerFrame
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? path = null,
  }) {
    return _then(_$RainviewerFrameImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RainviewerFrameImpl implements _RainviewerFrame {
  const _$RainviewerFrameImpl({required this.time, required this.path});

  factory _$RainviewerFrameImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainviewerFrameImplFromJson(json);

  @override
  final int time;
  @override
  final String path;

  @override
  String toString() {
    return 'RainviewerFrame(time: $time, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainviewerFrameImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, path);

  /// Create a copy of RainviewerFrame
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RainviewerFrameImplCopyWith<_$RainviewerFrameImpl> get copyWith =>
      __$$RainviewerFrameImplCopyWithImpl<_$RainviewerFrameImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainviewerFrameImplToJson(
      this,
    );
  }
}

abstract class _RainviewerFrame implements RainviewerFrame {
  const factory _RainviewerFrame(
      {required final int time,
      required final String path}) = _$RainviewerFrameImpl;

  factory _RainviewerFrame.fromJson(Map<String, dynamic> json) =
      _$RainviewerFrameImpl.fromJson;

  @override
  int get time;
  @override
  String get path;

  /// Create a copy of RainviewerFrame
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RainviewerFrameImplCopyWith<_$RainviewerFrameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

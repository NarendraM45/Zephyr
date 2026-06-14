// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  LocationModel get location => throw _privateConstructorUsedError;
  CurrentModel get current => throw _privateConstructorUsedError;
  List<AlertModel> get alerts => throw _privateConstructorUsedError;
  DateTime get cachedAt => throw _privateConstructorUsedError;

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {LocationModel location,
      CurrentModel current,
      List<AlertModel> alerts,
      DateTime cachedAt});

  $LocationModelCopyWith<$Res> get location;
  $CurrentModelCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? alerts = null,
    Object? cachedAt = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertModel>,
      cachedAt: null == cachedAt
          ? _value.cachedAt
          : cachedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentModelCopyWith<$Res> get current {
    return $CurrentModelCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LocationModel location,
      CurrentModel current,
      List<AlertModel> alerts,
      DateTime cachedAt});

  @override
  $LocationModelCopyWith<$Res> get location;
  @override
  $CurrentModelCopyWith<$Res> get current;
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? current = null,
    Object? alerts = null,
    Object? cachedAt = null,
  }) {
    return _then(_$WeatherModelImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentModel,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertModel>,
      cachedAt: null == cachedAt
          ? _value.cachedAt
          : cachedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl extends _WeatherModel {
  const _$WeatherModelImpl(
      {required this.location,
      required this.current,
      final List<AlertModel> alerts = const [],
      required this.cachedAt})
      : _alerts = alerts,
        super._();

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  @override
  final LocationModel location;
  @override
  final CurrentModel current;
  final List<AlertModel> _alerts;
  @override
  @JsonKey()
  List<AlertModel> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  final DateTime cachedAt;

  @override
  String toString() {
    return 'WeatherModel(location: $location, current: $current, alerts: $alerts, cachedAt: $cachedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            (identical(other.cachedAt, cachedAt) ||
                other.cachedAt == cachedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, current,
      const DeepCollectionEquality().hash(_alerts), cachedAt);

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel extends WeatherModel {
  const factory _WeatherModel(
      {required final LocationModel location,
      required final CurrentModel current,
      final List<AlertModel> alerts,
      required final DateTime cachedAt}) = _$WeatherModelImpl;
  const _WeatherModel._() : super._();

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  LocationModel get location;
  @override
  CurrentModel get current;
  @override
  List<AlertModel> get alerts;
  @override
  DateTime get cachedAt;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) {
  return _CurrentModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentModel {
  @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
  double get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble)
  double get tempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_c', fromJson: SafeJson.toDouble)
  double get feelslikeC => throw _privateConstructorUsedError;
  @JsonKey(name: 'feelslike_f', fromJson: SafeJson.toDouble)
  double get feelslikeF => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
  double get windKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
  double get windMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_degree', fromJson: SafeJson.toInt)
  int get windDegree => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_dir')
  String get windDir => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure_mb', fromJson: SafeJson.toDouble)
  double get pressureMb => throw _privateConstructorUsedError;
  @JsonKey(name: 'precip_mm', fromJson: SafeJson.toDouble)
  double get precipMm => throw _privateConstructorUsedError;
  @JsonKey(fromJson: SafeJson.toInt)
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day', fromJson: SafeJson.toInt)
  int get isDay => throw _privateConstructorUsedError;
  ConditionModel get condition => throw _privateConstructorUsedError;
  @JsonKey(fromJson: SafeJson.toDouble)
  double get uv => throw _privateConstructorUsedError;
  @JsonKey(name: 'vis_km', fromJson: SafeJson.toDouble)
  double get visKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_quality')
  AirQualityModel? get airQuality => throw _privateConstructorUsedError;

  /// Serializes this CurrentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentModelCopyWith<CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentModelCopyWith<$Res> {
  factory $CurrentModelCopyWith(
          CurrentModel value, $Res Function(CurrentModel) then) =
      _$CurrentModelCopyWithImpl<$Res, CurrentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble) double tempC,
      @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble) double tempF,
      @JsonKey(name: 'feelslike_c', fromJson: SafeJson.toDouble)
      double feelslikeC,
      @JsonKey(name: 'feelslike_f', fromJson: SafeJson.toDouble)
      double feelslikeF,
      @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble) double windKph,
      @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble) double windMph,
      @JsonKey(name: 'wind_degree', fromJson: SafeJson.toInt) int windDegree,
      @JsonKey(name: 'wind_dir') String windDir,
      @JsonKey(name: 'pressure_mb', fromJson: SafeJson.toDouble)
      double pressureMb,
      @JsonKey(name: 'precip_mm', fromJson: SafeJson.toDouble) double precipMm,
      @JsonKey(fromJson: SafeJson.toInt) int humidity,
      @JsonKey(name: 'is_day', fromJson: SafeJson.toInt) int isDay,
      ConditionModel condition,
      @JsonKey(fromJson: SafeJson.toDouble) double uv,
      @JsonKey(name: 'vis_km', fromJson: SafeJson.toDouble) double visKm,
      @JsonKey(name: 'air_quality') AirQualityModel? airQuality});

  $ConditionModelCopyWith<$Res> get condition;
  $AirQualityModelCopyWith<$Res>? get airQuality;
}

/// @nodoc
class _$CurrentModelCopyWithImpl<$Res, $Val extends CurrentModel>
    implements $CurrentModelCopyWith<$Res> {
  _$CurrentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = null,
    Object? tempF = null,
    Object? feelslikeC = null,
    Object? feelslikeF = null,
    Object? windKph = null,
    Object? windMph = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? precipMm = null,
    Object? humidity = null,
    Object? isDay = null,
    Object? condition = null,
    Object? uv = null,
    Object? visKm = null,
    Object? airQuality = freezed,
  }) {
    return _then(_value.copyWith(
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeF: null == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      airQuality: freezed == airQuality
          ? _value.airQuality
          : airQuality // ignore: cast_nullable_to_non_nullable
              as AirQualityModel?,
    ) as $Val);
  }

  /// Create a copy of CurrentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }

  /// Create a copy of CurrentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirQualityModelCopyWith<$Res>? get airQuality {
    if (_value.airQuality == null) {
      return null;
    }

    return $AirQualityModelCopyWith<$Res>(_value.airQuality!, (value) {
      return _then(_value.copyWith(airQuality: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentModelImplCopyWith<$Res>
    implements $CurrentModelCopyWith<$Res> {
  factory _$$CurrentModelImplCopyWith(
          _$CurrentModelImpl value, $Res Function(_$CurrentModelImpl) then) =
      __$$CurrentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble) double tempC,
      @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble) double tempF,
      @JsonKey(name: 'feelslike_c', fromJson: SafeJson.toDouble)
      double feelslikeC,
      @JsonKey(name: 'feelslike_f', fromJson: SafeJson.toDouble)
      double feelslikeF,
      @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble) double windKph,
      @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble) double windMph,
      @JsonKey(name: 'wind_degree', fromJson: SafeJson.toInt) int windDegree,
      @JsonKey(name: 'wind_dir') String windDir,
      @JsonKey(name: 'pressure_mb', fromJson: SafeJson.toDouble)
      double pressureMb,
      @JsonKey(name: 'precip_mm', fromJson: SafeJson.toDouble) double precipMm,
      @JsonKey(fromJson: SafeJson.toInt) int humidity,
      @JsonKey(name: 'is_day', fromJson: SafeJson.toInt) int isDay,
      ConditionModel condition,
      @JsonKey(fromJson: SafeJson.toDouble) double uv,
      @JsonKey(name: 'vis_km', fromJson: SafeJson.toDouble) double visKm,
      @JsonKey(name: 'air_quality') AirQualityModel? airQuality});

  @override
  $ConditionModelCopyWith<$Res> get condition;
  @override
  $AirQualityModelCopyWith<$Res>? get airQuality;
}

/// @nodoc
class __$$CurrentModelImplCopyWithImpl<$Res>
    extends _$CurrentModelCopyWithImpl<$Res, _$CurrentModelImpl>
    implements _$$CurrentModelImplCopyWith<$Res> {
  __$$CurrentModelImplCopyWithImpl(
      _$CurrentModelImpl _value, $Res Function(_$CurrentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempC = null,
    Object? tempF = null,
    Object? feelslikeC = null,
    Object? feelslikeF = null,
    Object? windKph = null,
    Object? windMph = null,
    Object? windDegree = null,
    Object? windDir = null,
    Object? pressureMb = null,
    Object? precipMm = null,
    Object? humidity = null,
    Object? isDay = null,
    Object? condition = null,
    Object? uv = null,
    Object? visKm = null,
    Object? airQuality = freezed,
  }) {
    return _then(_$CurrentModelImpl(
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeC: null == feelslikeC
          ? _value.feelslikeC
          : feelslikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelslikeF: null == feelslikeF
          ? _value.feelslikeF
          : feelslikeF // ignore: cast_nullable_to_non_nullable
              as double,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
      visKm: null == visKm
          ? _value.visKm
          : visKm // ignore: cast_nullable_to_non_nullable
              as double,
      airQuality: freezed == airQuality
          ? _value.airQuality
          : airQuality // ignore: cast_nullable_to_non_nullable
              as AirQualityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentModelImpl implements _CurrentModel {
  const _$CurrentModelImpl(
      {@JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
      required this.tempC,
      @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble) required this.tempF,
      @JsonKey(name: 'feelslike_c', fromJson: SafeJson.toDouble)
      required this.feelslikeC,
      @JsonKey(name: 'feelslike_f', fromJson: SafeJson.toDouble)
      required this.feelslikeF,
      @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
      required this.windKph,
      @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
      required this.windMph,
      @JsonKey(name: 'wind_degree', fromJson: SafeJson.toInt)
      required this.windDegree,
      @JsonKey(name: 'wind_dir') required this.windDir,
      @JsonKey(name: 'pressure_mb', fromJson: SafeJson.toDouble)
      required this.pressureMb,
      @JsonKey(name: 'precip_mm', fromJson: SafeJson.toDouble)
      required this.precipMm,
      @JsonKey(fromJson: SafeJson.toInt) required this.humidity,
      @JsonKey(name: 'is_day', fromJson: SafeJson.toInt) required this.isDay,
      required this.condition,
      @JsonKey(fromJson: SafeJson.toDouble) required this.uv,
      @JsonKey(name: 'vis_km', fromJson: SafeJson.toDouble) required this.visKm,
      @JsonKey(name: 'air_quality') this.airQuality});

  factory _$CurrentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentModelImplFromJson(json);

  @override
  @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
  final double tempC;
  @override
  @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble)
  final double tempF;
  @override
  @JsonKey(name: 'feelslike_c', fromJson: SafeJson.toDouble)
  final double feelslikeC;
  @override
  @JsonKey(name: 'feelslike_f', fromJson: SafeJson.toDouble)
  final double feelslikeF;
  @override
  @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
  final double windKph;
  @override
  @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
  final double windMph;
  @override
  @JsonKey(name: 'wind_degree', fromJson: SafeJson.toInt)
  final int windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  final String windDir;
  @override
  @JsonKey(name: 'pressure_mb', fromJson: SafeJson.toDouble)
  final double pressureMb;
  @override
  @JsonKey(name: 'precip_mm', fromJson: SafeJson.toDouble)
  final double precipMm;
  @override
  @JsonKey(fromJson: SafeJson.toInt)
  final int humidity;
  @override
  @JsonKey(name: 'is_day', fromJson: SafeJson.toInt)
  final int isDay;
  @override
  final ConditionModel condition;
  @override
  @JsonKey(fromJson: SafeJson.toDouble)
  final double uv;
  @override
  @JsonKey(name: 'vis_km', fromJson: SafeJson.toDouble)
  final double visKm;
  @override
  @JsonKey(name: 'air_quality')
  final AirQualityModel? airQuality;

  @override
  String toString() {
    return 'CurrentModel(tempC: $tempC, tempF: $tempF, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, windKph: $windKph, windMph: $windMph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, precipMm: $precipMm, humidity: $humidity, isDay: $isDay, condition: $condition, uv: $uv, visKm: $visKm, airQuality: $airQuality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentModelImpl &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.feelslikeC, feelslikeC) ||
                other.feelslikeC == feelslikeC) &&
            (identical(other.feelslikeF, feelslikeF) ||
                other.feelslikeF == feelslikeF) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.pressureMb, pressureMb) ||
                other.pressureMb == pressureMb) &&
            (identical(other.precipMm, precipMm) ||
                other.precipMm == precipMm) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv) &&
            (identical(other.visKm, visKm) || other.visKm == visKm) &&
            (identical(other.airQuality, airQuality) ||
                other.airQuality == airQuality));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tempC,
      tempF,
      feelslikeC,
      feelslikeF,
      windKph,
      windMph,
      windDegree,
      windDir,
      pressureMb,
      precipMm,
      humidity,
      isDay,
      condition,
      uv,
      visKm,
      airQuality);

  /// Create a copy of CurrentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentModelImplCopyWith<_$CurrentModelImpl> get copyWith =>
      __$$CurrentModelImplCopyWithImpl<_$CurrentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentModel implements CurrentModel {
  const factory _CurrentModel(
          {@JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
          required final double tempC,
          @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble)
          required final double tempF,
          @JsonKey(name: 'feelslike_c', fromJson: SafeJson.toDouble)
          required final double feelslikeC,
          @JsonKey(name: 'feelslike_f', fromJson: SafeJson.toDouble)
          required final double feelslikeF,
          @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
          required final double windKph,
          @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
          required final double windMph,
          @JsonKey(name: 'wind_degree', fromJson: SafeJson.toInt)
          required final int windDegree,
          @JsonKey(name: 'wind_dir') required final String windDir,
          @JsonKey(name: 'pressure_mb', fromJson: SafeJson.toDouble)
          required final double pressureMb,
          @JsonKey(name: 'precip_mm', fromJson: SafeJson.toDouble)
          required final double precipMm,
          @JsonKey(fromJson: SafeJson.toInt) required final int humidity,
          @JsonKey(name: 'is_day', fromJson: SafeJson.toInt)
          required final int isDay,
          required final ConditionModel condition,
          @JsonKey(fromJson: SafeJson.toDouble) required final double uv,
          @JsonKey(name: 'vis_km', fromJson: SafeJson.toDouble)
          required final double visKm,
          @JsonKey(name: 'air_quality') final AirQualityModel? airQuality}) =
      _$CurrentModelImpl;

  factory _CurrentModel.fromJson(Map<String, dynamic> json) =
      _$CurrentModelImpl.fromJson;

  @override
  @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
  double get tempC;
  @override
  @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble)
  double get tempF;
  @override
  @JsonKey(name: 'feelslike_c', fromJson: SafeJson.toDouble)
  double get feelslikeC;
  @override
  @JsonKey(name: 'feelslike_f', fromJson: SafeJson.toDouble)
  double get feelslikeF;
  @override
  @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
  double get windKph;
  @override
  @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
  double get windMph;
  @override
  @JsonKey(name: 'wind_degree', fromJson: SafeJson.toInt)
  int get windDegree;
  @override
  @JsonKey(name: 'wind_dir')
  String get windDir;
  @override
  @JsonKey(name: 'pressure_mb', fromJson: SafeJson.toDouble)
  double get pressureMb;
  @override
  @JsonKey(name: 'precip_mm', fromJson: SafeJson.toDouble)
  double get precipMm;
  @override
  @JsonKey(fromJson: SafeJson.toInt)
  int get humidity;
  @override
  @JsonKey(name: 'is_day', fromJson: SafeJson.toInt)
  int get isDay;
  @override
  ConditionModel get condition;
  @override
  @JsonKey(fromJson: SafeJson.toDouble)
  double get uv;
  @override
  @JsonKey(name: 'vis_km', fromJson: SafeJson.toDouble)
  double get visKm;
  @override
  @JsonKey(name: 'air_quality')
  AirQualityModel? get airQuality;

  /// Create a copy of CurrentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentModelImplCopyWith<_$CurrentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

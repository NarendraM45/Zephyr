// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Weather {
  String get cityName => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get localtime => throw _privateConstructorUsedError;
  double get tempC => throw _privateConstructorUsedError;
  double get tempF => throw _privateConstructorUsedError;
  double get feelsLikeC => throw _privateConstructorUsedError;
  double get feelsLikeF => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  double get windKph => throw _privateConstructorUsedError;
  double get windMph => throw _privateConstructorUsedError;
  String get windDir => throw _privateConstructorUsedError;
  int get windDegree => throw _privateConstructorUsedError;
  String get conditionText => throw _privateConstructorUsedError;
  int get conditionCode => throw _privateConstructorUsedError;
  double get uvIndex => throw _privateConstructorUsedError;
  double get visibilityKm => throw _privateConstructorUsedError;
  double get pressureMb => throw _privateConstructorUsedError;
  double get precipMm => throw _privateConstructorUsedError;
  bool get isDay => throw _privateConstructorUsedError;
  AirQuality? get airQuality => throw _privateConstructorUsedError;
  List<WeatherAlert> get alerts => throw _privateConstructorUsedError;
  DateTime get cachedAt => throw _privateConstructorUsedError;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {String cityName,
      String region,
      String country,
      double lat,
      double lon,
      String localtime,
      double tempC,
      double tempF,
      double feelsLikeC,
      double feelsLikeF,
      int humidity,
      double windKph,
      double windMph,
      String windDir,
      int windDegree,
      String conditionText,
      int conditionCode,
      double uvIndex,
      double visibilityKm,
      double pressureMb,
      double precipMm,
      bool isDay,
      AirQuality? airQuality,
      List<WeatherAlert> alerts,
      DateTime cachedAt});

  $AirQualityCopyWith<$Res>? get airQuality;
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? localtime = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? feelsLikeC = null,
    Object? feelsLikeF = null,
    Object? humidity = null,
    Object? windKph = null,
    Object? windMph = null,
    Object? windDir = null,
    Object? windDegree = null,
    Object? conditionText = null,
    Object? conditionCode = null,
    Object? uvIndex = null,
    Object? visibilityKm = null,
    Object? pressureMb = null,
    Object? precipMm = null,
    Object? isDay = null,
    Object? airQuality = freezed,
    Object? alerts = null,
    Object? cachedAt = null,
  }) {
    return _then(_value.copyWith(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLikeC: null == feelsLikeC
          ? _value.feelsLikeC
          : feelsLikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLikeF: null == feelsLikeF
          ? _value.feelsLikeF
          : feelsLikeF // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      conditionText: null == conditionText
          ? _value.conditionText
          : conditionText // ignore: cast_nullable_to_non_nullable
              as String,
      conditionCode: null == conditionCode
          ? _value.conditionCode
          : conditionCode // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as double,
      visibilityKm: null == visibilityKm
          ? _value.visibilityKm
          : visibilityKm // ignore: cast_nullable_to_non_nullable
              as double,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as bool,
      airQuality: freezed == airQuality
          ? _value.airQuality
          : airQuality // ignore: cast_nullable_to_non_nullable
              as AirQuality?,
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<WeatherAlert>,
      cachedAt: null == cachedAt
          ? _value.cachedAt
          : cachedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AirQualityCopyWith<$Res>? get airQuality {
    if (_value.airQuality == null) {
      return null;
    }

    return $AirQualityCopyWith<$Res>(_value.airQuality!, (value) {
      return _then(_value.copyWith(airQuality: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cityName,
      String region,
      String country,
      double lat,
      double lon,
      String localtime,
      double tempC,
      double tempF,
      double feelsLikeC,
      double feelsLikeF,
      int humidity,
      double windKph,
      double windMph,
      String windDir,
      int windDegree,
      String conditionText,
      int conditionCode,
      double uvIndex,
      double visibilityKm,
      double pressureMb,
      double precipMm,
      bool isDay,
      AirQuality? airQuality,
      List<WeatherAlert> alerts,
      DateTime cachedAt});

  @override
  $AirQualityCopyWith<$Res>? get airQuality;
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? region = null,
    Object? country = null,
    Object? lat = null,
    Object? lon = null,
    Object? localtime = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? feelsLikeC = null,
    Object? feelsLikeF = null,
    Object? humidity = null,
    Object? windKph = null,
    Object? windMph = null,
    Object? windDir = null,
    Object? windDegree = null,
    Object? conditionText = null,
    Object? conditionCode = null,
    Object? uvIndex = null,
    Object? visibilityKm = null,
    Object? pressureMb = null,
    Object? precipMm = null,
    Object? isDay = null,
    Object? airQuality = freezed,
    Object? alerts = null,
    Object? cachedAt = null,
  }) {
    return _then(_$WeatherImpl(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      localtime: null == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLikeC: null == feelsLikeC
          ? _value.feelsLikeC
          : feelsLikeC // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLikeF: null == feelsLikeF
          ? _value.feelsLikeF
          : feelsLikeF // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      windDir: null == windDir
          ? _value.windDir
          : windDir // ignore: cast_nullable_to_non_nullable
              as String,
      windDegree: null == windDegree
          ? _value.windDegree
          : windDegree // ignore: cast_nullable_to_non_nullable
              as int,
      conditionText: null == conditionText
          ? _value.conditionText
          : conditionText // ignore: cast_nullable_to_non_nullable
              as String,
      conditionCode: null == conditionCode
          ? _value.conditionCode
          : conditionCode // ignore: cast_nullable_to_non_nullable
              as int,
      uvIndex: null == uvIndex
          ? _value.uvIndex
          : uvIndex // ignore: cast_nullable_to_non_nullable
              as double,
      visibilityKm: null == visibilityKm
          ? _value.visibilityKm
          : visibilityKm // ignore: cast_nullable_to_non_nullable
              as double,
      pressureMb: null == pressureMb
          ? _value.pressureMb
          : pressureMb // ignore: cast_nullable_to_non_nullable
              as double,
      precipMm: null == precipMm
          ? _value.precipMm
          : precipMm // ignore: cast_nullable_to_non_nullable
              as double,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as bool,
      airQuality: freezed == airQuality
          ? _value.airQuality
          : airQuality // ignore: cast_nullable_to_non_nullable
              as AirQuality?,
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<WeatherAlert>,
      cachedAt: null == cachedAt
          ? _value.cachedAt
          : cachedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$WeatherImpl implements _Weather {
  const _$WeatherImpl(
      {required this.cityName,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
      required this.localtime,
      required this.tempC,
      required this.tempF,
      required this.feelsLikeC,
      required this.feelsLikeF,
      required this.humidity,
      required this.windKph,
      required this.windMph,
      required this.windDir,
      required this.windDegree,
      required this.conditionText,
      required this.conditionCode,
      required this.uvIndex,
      required this.visibilityKm,
      required this.pressureMb,
      required this.precipMm,
      required this.isDay,
      required this.airQuality,
      required final List<WeatherAlert> alerts,
      required this.cachedAt})
      : _alerts = alerts;

  @override
  final String cityName;
  @override
  final String region;
  @override
  final String country;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String localtime;
  @override
  final double tempC;
  @override
  final double tempF;
  @override
  final double feelsLikeC;
  @override
  final double feelsLikeF;
  @override
  final int humidity;
  @override
  final double windKph;
  @override
  final double windMph;
  @override
  final String windDir;
  @override
  final int windDegree;
  @override
  final String conditionText;
  @override
  final int conditionCode;
  @override
  final double uvIndex;
  @override
  final double visibilityKm;
  @override
  final double pressureMb;
  @override
  final double precipMm;
  @override
  final bool isDay;
  @override
  final AirQuality? airQuality;
  final List<WeatherAlert> _alerts;
  @override
  List<WeatherAlert> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  @override
  final DateTime cachedAt;

  @override
  String toString() {
    return 'Weather(cityName: $cityName, region: $region, country: $country, lat: $lat, lon: $lon, localtime: $localtime, tempC: $tempC, tempF: $tempF, feelsLikeC: $feelsLikeC, feelsLikeF: $feelsLikeF, humidity: $humidity, windKph: $windKph, windMph: $windMph, windDir: $windDir, windDegree: $windDegree, conditionText: $conditionText, conditionCode: $conditionCode, uvIndex: $uvIndex, visibilityKm: $visibilityKm, pressureMb: $pressureMb, precipMm: $precipMm, isDay: $isDay, airQuality: $airQuality, alerts: $alerts, cachedAt: $cachedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.feelsLikeC, feelsLikeC) ||
                other.feelsLikeC == feelsLikeC) &&
            (identical(other.feelsLikeF, feelsLikeF) ||
                other.feelsLikeF == feelsLikeF) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.windDegree, windDegree) ||
                other.windDegree == windDegree) &&
            (identical(other.conditionText, conditionText) ||
                other.conditionText == conditionText) &&
            (identical(other.conditionCode, conditionCode) ||
                other.conditionCode == conditionCode) &&
            (identical(other.uvIndex, uvIndex) || other.uvIndex == uvIndex) &&
            (identical(other.visibilityKm, visibilityKm) ||
                other.visibilityKm == visibilityKm) &&
            (identical(other.pressureMb, pressureMb) ||
                other.pressureMb == pressureMb) &&
            (identical(other.precipMm, precipMm) ||
                other.precipMm == precipMm) &&
            (identical(other.isDay, isDay) || other.isDay == isDay) &&
            (identical(other.airQuality, airQuality) ||
                other.airQuality == airQuality) &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            (identical(other.cachedAt, cachedAt) ||
                other.cachedAt == cachedAt));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        cityName,
        region,
        country,
        lat,
        lon,
        localtime,
        tempC,
        tempF,
        feelsLikeC,
        feelsLikeF,
        humidity,
        windKph,
        windMph,
        windDir,
        windDegree,
        conditionText,
        conditionCode,
        uvIndex,
        visibilityKm,
        pressureMb,
        precipMm,
        isDay,
        airQuality,
        const DeepCollectionEquality().hash(_alerts),
        cachedAt
      ]);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final String cityName,
      required final String region,
      required final String country,
      required final double lat,
      required final double lon,
      required final String localtime,
      required final double tempC,
      required final double tempF,
      required final double feelsLikeC,
      required final double feelsLikeF,
      required final int humidity,
      required final double windKph,
      required final double windMph,
      required final String windDir,
      required final int windDegree,
      required final String conditionText,
      required final int conditionCode,
      required final double uvIndex,
      required final double visibilityKm,
      required final double pressureMb,
      required final double precipMm,
      required final bool isDay,
      required final AirQuality? airQuality,
      required final List<WeatherAlert> alerts,
      required final DateTime cachedAt}) = _$WeatherImpl;

  @override
  String get cityName;
  @override
  String get region;
  @override
  String get country;
  @override
  double get lat;
  @override
  double get lon;
  @override
  String get localtime;
  @override
  double get tempC;
  @override
  double get tempF;
  @override
  double get feelsLikeC;
  @override
  double get feelsLikeF;
  @override
  int get humidity;
  @override
  double get windKph;
  @override
  double get windMph;
  @override
  String get windDir;
  @override
  int get windDegree;
  @override
  String get conditionText;
  @override
  int get conditionCode;
  @override
  double get uvIndex;
  @override
  double get visibilityKm;
  @override
  double get pressureMb;
  @override
  double get precipMm;
  @override
  bool get isDay;
  @override
  AirQuality? get airQuality;
  @override
  List<WeatherAlert> get alerts;
  @override
  DateTime get cachedAt;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

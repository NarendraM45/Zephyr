// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HourlyModel _$HourlyModelFromJson(Map<String, dynamic> json) {
  return _HourlyModel.fromJson(json);
}

/// @nodoc
mixin _$HourlyModel {
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
  double get tempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble)
  double get tempF => throw _privateConstructorUsedError;
  ConditionModel get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'chance_of_rain', fromJson: SafeJson.toInt)
  int get chanceOfRain => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
  double get windKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
  double get windMph => throw _privateConstructorUsedError;
  @JsonKey(fromJson: SafeJson.toInt)
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_day', fromJson: SafeJson.toInt)
  int get isDay => throw _privateConstructorUsedError;

  /// Serializes this HourlyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HourlyModelCopyWith<HourlyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyModelCopyWith<$Res> {
  factory $HourlyModelCopyWith(
          HourlyModel value, $Res Function(HourlyModel) then) =
      _$HourlyModelCopyWithImpl<$Res, HourlyModel>;
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble) double tempC,
      @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble) double tempF,
      ConditionModel condition,
      @JsonKey(name: 'chance_of_rain', fromJson: SafeJson.toInt)
      int chanceOfRain,
      @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble) double windKph,
      @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble) double windMph,
      @JsonKey(fromJson: SafeJson.toInt) int humidity,
      @JsonKey(name: 'is_day', fromJson: SafeJson.toInt) int isDay});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$HourlyModelCopyWithImpl<$Res, $Val extends HourlyModel>
    implements $HourlyModelCopyWith<$Res> {
  _$HourlyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? condition = null,
    Object? chanceOfRain = null,
    Object? windKph = null,
    Object? windMph = null,
    Object? humidity = null,
    Object? isDay = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
      chanceOfRain: null == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConditionModelCopyWith<$Res> get condition {
    return $ConditionModelCopyWith<$Res>(_value.condition, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HourlyModelImplCopyWith<$Res>
    implements $HourlyModelCopyWith<$Res> {
  factory _$$HourlyModelImplCopyWith(
          _$HourlyModelImpl value, $Res Function(_$HourlyModelImpl) then) =
      __$$HourlyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble) double tempC,
      @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble) double tempF,
      ConditionModel condition,
      @JsonKey(name: 'chance_of_rain', fromJson: SafeJson.toInt)
      int chanceOfRain,
      @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble) double windKph,
      @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble) double windMph,
      @JsonKey(fromJson: SafeJson.toInt) int humidity,
      @JsonKey(name: 'is_day', fromJson: SafeJson.toInt) int isDay});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$HourlyModelImplCopyWithImpl<$Res>
    extends _$HourlyModelCopyWithImpl<$Res, _$HourlyModelImpl>
    implements _$$HourlyModelImplCopyWith<$Res> {
  __$$HourlyModelImplCopyWithImpl(
      _$HourlyModelImpl _value, $Res Function(_$HourlyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? tempC = null,
    Object? tempF = null,
    Object? condition = null,
    Object? chanceOfRain = null,
    Object? windKph = null,
    Object? windMph = null,
    Object? humidity = null,
    Object? isDay = null,
  }) {
    return _then(_$HourlyModelImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      tempC: null == tempC
          ? _value.tempC
          : tempC // ignore: cast_nullable_to_non_nullable
              as double,
      tempF: null == tempF
          ? _value.tempF
          : tempF // ignore: cast_nullable_to_non_nullable
              as double,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
      chanceOfRain: null == chanceOfRain
          ? _value.chanceOfRain
          : chanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
      windKph: null == windKph
          ? _value.windKph
          : windKph // ignore: cast_nullable_to_non_nullable
              as double,
      windMph: null == windMph
          ? _value.windMph
          : windMph // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      isDay: null == isDay
          ? _value.isDay
          : isDay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyModelImpl extends _HourlyModel {
  const _$HourlyModelImpl(
      {required this.time,
      @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble) required this.tempC,
      @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble) required this.tempF,
      required this.condition,
      @JsonKey(name: 'chance_of_rain', fromJson: SafeJson.toInt)
      required this.chanceOfRain,
      @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
      required this.windKph,
      @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
      required this.windMph,
      @JsonKey(fromJson: SafeJson.toInt) required this.humidity,
      @JsonKey(name: 'is_day', fromJson: SafeJson.toInt) required this.isDay})
      : super._();

  factory _$HourlyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyModelImplFromJson(json);

  @override
  final String time;
  @override
  @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
  final double tempC;
  @override
  @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble)
  final double tempF;
  @override
  final ConditionModel condition;
  @override
  @JsonKey(name: 'chance_of_rain', fromJson: SafeJson.toInt)
  final int chanceOfRain;
  @override
  @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
  final double windKph;
  @override
  @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
  final double windMph;
  @override
  @JsonKey(fromJson: SafeJson.toInt)
  final int humidity;
  @override
  @JsonKey(name: 'is_day', fromJson: SafeJson.toInt)
  final int isDay;

  @override
  String toString() {
    return 'HourlyModel(time: $time, tempC: $tempC, tempF: $tempF, condition: $condition, chanceOfRain: $chanceOfRain, windKph: $windKph, windMph: $windMph, humidity: $humidity, isDay: $isDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyModelImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.tempC, tempC) || other.tempC == tempC) &&
            (identical(other.tempF, tempF) || other.tempF == tempF) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.chanceOfRain, chanceOfRain) ||
                other.chanceOfRain == chanceOfRain) &&
            (identical(other.windKph, windKph) || other.windKph == windKph) &&
            (identical(other.windMph, windMph) || other.windMph == windMph) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.isDay, isDay) || other.isDay == isDay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, time, tempC, tempF, condition,
      chanceOfRain, windKph, windMph, humidity, isDay);

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyModelImplCopyWith<_$HourlyModelImpl> get copyWith =>
      __$$HourlyModelImplCopyWithImpl<_$HourlyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyModelImplToJson(
      this,
    );
  }
}

abstract class _HourlyModel extends HourlyModel {
  const factory _HourlyModel(
      {required final String time,
      @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
      required final double tempC,
      @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble)
      required final double tempF,
      required final ConditionModel condition,
      @JsonKey(name: 'chance_of_rain', fromJson: SafeJson.toInt)
      required final int chanceOfRain,
      @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
      required final double windKph,
      @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
      required final double windMph,
      @JsonKey(fromJson: SafeJson.toInt) required final int humidity,
      @JsonKey(name: 'is_day', fromJson: SafeJson.toInt)
      required final int isDay}) = _$HourlyModelImpl;
  const _HourlyModel._() : super._();

  factory _HourlyModel.fromJson(Map<String, dynamic> json) =
      _$HourlyModelImpl.fromJson;

  @override
  String get time;
  @override
  @JsonKey(name: 'temp_c', fromJson: SafeJson.toDouble)
  double get tempC;
  @override
  @JsonKey(name: 'temp_f', fromJson: SafeJson.toDouble)
  double get tempF;
  @override
  ConditionModel get condition;
  @override
  @JsonKey(name: 'chance_of_rain', fromJson: SafeJson.toInt)
  int get chanceOfRain;
  @override
  @JsonKey(name: 'wind_kph', fromJson: SafeJson.toDouble)
  double get windKph;
  @override
  @JsonKey(name: 'wind_mph', fromJson: SafeJson.toDouble)
  double get windMph;
  @override
  @JsonKey(fromJson: SafeJson.toInt)
  int get humidity;
  @override
  @JsonKey(name: 'is_day', fromJson: SafeJson.toInt)
  int get isDay;

  /// Create a copy of HourlyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourlyModelImplCopyWith<_$HourlyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConditionModel _$ConditionModelFromJson(Map<String, dynamic> json) {
  return _ConditionModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionModel {
  String get text => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this ConditionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConditionModelCopyWith<ConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionModelCopyWith<$Res> {
  factory $ConditionModelCopyWith(
          ConditionModel value, $Res Function(ConditionModel) then) =
      _$ConditionModelCopyWithImpl<$Res, ConditionModel>;
  @useResult
  $Res call({String text, int code, String icon});
}

/// @nodoc
class _$ConditionModelCopyWithImpl<$Res, $Val extends ConditionModel>
    implements $ConditionModelCopyWith<$Res> {
  _$ConditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? code = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionModelImplCopyWith<$Res>
    implements $ConditionModelCopyWith<$Res> {
  factory _$$ConditionModelImplCopyWith(_$ConditionModelImpl value,
          $Res Function(_$ConditionModelImpl) then) =
      __$$ConditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, int code, String icon});
}

/// @nodoc
class __$$ConditionModelImplCopyWithImpl<$Res>
    extends _$ConditionModelCopyWithImpl<$Res, _$ConditionModelImpl>
    implements _$$ConditionModelImplCopyWith<$Res> {
  __$$ConditionModelImplCopyWithImpl(
      _$ConditionModelImpl _value, $Res Function(_$ConditionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? code = null,
    Object? icon = null,
  }) {
    return _then(_$ConditionModelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionModelImpl implements _ConditionModel {
  const _$ConditionModelImpl(
      {required this.text, required this.code, required this.icon});

  factory _$ConditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionModelImplFromJson(json);

  @override
  final String text;
  @override
  final int code;
  @override
  final String icon;

  @override
  String toString() {
    return 'ConditionModel(text: $text, code: $code, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, code, icon);

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      __$$ConditionModelImplCopyWithImpl<_$ConditionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionModelImplToJson(
      this,
    );
  }
}

abstract class _ConditionModel implements ConditionModel {
  const factory _ConditionModel(
      {required final String text,
      required final int code,
      required final String icon}) = _$ConditionModelImpl;

  factory _ConditionModel.fromJson(Map<String, dynamic> json) =
      _$ConditionModelImpl.fromJson;

  @override
  String get text;
  @override
  int get code;
  @override
  String get icon;

  /// Create a copy of ConditionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionModelImplCopyWith<_$ConditionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

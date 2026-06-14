// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_alert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherAlert {
  String get headline => throw _privateConstructorUsedError;
  String get severity => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;
  String get effective => throw _privateConstructorUsedError;
  String get expires => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherAlertCopyWith<WeatherAlert> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherAlertCopyWith<$Res> {
  factory $WeatherAlertCopyWith(
          WeatherAlert value, $Res Function(WeatherAlert) then) =
      _$WeatherAlertCopyWithImpl<$Res, WeatherAlert>;
  @useResult
  $Res call(
      {String headline,
      String severity,
      String event,
      String effective,
      String expires,
      String desc});
}

/// @nodoc
class _$WeatherAlertCopyWithImpl<$Res, $Val extends WeatherAlert>
    implements $WeatherAlertCopyWith<$Res> {
  _$WeatherAlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headline = null,
    Object? severity = null,
    Object? event = null,
    Object? effective = null,
    Object? expires = null,
    Object? desc = null,
  }) {
    return _then(_value.copyWith(
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      effective: null == effective
          ? _value.effective
          : effective // ignore: cast_nullable_to_non_nullable
              as String,
      expires: null == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherAlertImplCopyWith<$Res>
    implements $WeatherAlertCopyWith<$Res> {
  factory _$$WeatherAlertImplCopyWith(
          _$WeatherAlertImpl value, $Res Function(_$WeatherAlertImpl) then) =
      __$$WeatherAlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String headline,
      String severity,
      String event,
      String effective,
      String expires,
      String desc});
}

/// @nodoc
class __$$WeatherAlertImplCopyWithImpl<$Res>
    extends _$WeatherAlertCopyWithImpl<$Res, _$WeatherAlertImpl>
    implements _$$WeatherAlertImplCopyWith<$Res> {
  __$$WeatherAlertImplCopyWithImpl(
      _$WeatherAlertImpl _value, $Res Function(_$WeatherAlertImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headline = null,
    Object? severity = null,
    Object? event = null,
    Object? effective = null,
    Object? expires = null,
    Object? desc = null,
  }) {
    return _then(_$WeatherAlertImpl(
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as String,
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      effective: null == effective
          ? _value.effective
          : effective // ignore: cast_nullable_to_non_nullable
              as String,
      expires: null == expires
          ? _value.expires
          : expires // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherAlertImpl implements _WeatherAlert {
  const _$WeatherAlertImpl(
      {required this.headline,
      required this.severity,
      required this.event,
      required this.effective,
      required this.expires,
      required this.desc});

  @override
  final String headline;
  @override
  final String severity;
  @override
  final String event;
  @override
  final String effective;
  @override
  final String expires;
  @override
  final String desc;

  @override
  String toString() {
    return 'WeatherAlert(headline: $headline, severity: $severity, event: $event, effective: $effective, expires: $expires, desc: $desc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherAlertImpl &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.severity, severity) ||
                other.severity == severity) &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.effective, effective) ||
                other.effective == effective) &&
            (identical(other.expires, expires) || other.expires == expires) &&
            (identical(other.desc, desc) || other.desc == desc));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, headline, severity, event, effective, expires, desc);

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherAlertImplCopyWith<_$WeatherAlertImpl> get copyWith =>
      __$$WeatherAlertImplCopyWithImpl<_$WeatherAlertImpl>(this, _$identity);
}

abstract class _WeatherAlert implements WeatherAlert {
  const factory _WeatherAlert(
      {required final String headline,
      required final String severity,
      required final String event,
      required final String effective,
      required final String expires,
      required final String desc}) = _$WeatherAlertImpl;

  @override
  String get headline;
  @override
  String get severity;
  @override
  String get event;
  @override
  String get effective;
  @override
  String get expires;
  @override
  String get desc;

  /// Create a copy of WeatherAlert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherAlertImplCopyWith<_$WeatherAlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

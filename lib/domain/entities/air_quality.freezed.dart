// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_quality.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AirQuality {
  double get pm25 => throw _privateConstructorUsedError;
  double get pm10 => throw _privateConstructorUsedError;
  int get usEpaIndex => throw _privateConstructorUsedError;

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirQualityCopyWith<AirQuality> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirQualityCopyWith<$Res> {
  factory $AirQualityCopyWith(
          AirQuality value, $Res Function(AirQuality) then) =
      _$AirQualityCopyWithImpl<$Res, AirQuality>;
  @useResult
  $Res call({double pm25, double pm10, int usEpaIndex});
}

/// @nodoc
class _$AirQualityCopyWithImpl<$Res, $Val extends AirQuality>
    implements $AirQualityCopyWith<$Res> {
  _$AirQualityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pm25 = null,
    Object? pm10 = null,
    Object? usEpaIndex = null,
  }) {
    return _then(_value.copyWith(
      pm25: null == pm25
          ? _value.pm25
          : pm25 // ignore: cast_nullable_to_non_nullable
              as double,
      pm10: null == pm10
          ? _value.pm10
          : pm10 // ignore: cast_nullable_to_non_nullable
              as double,
      usEpaIndex: null == usEpaIndex
          ? _value.usEpaIndex
          : usEpaIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AirQualityImplCopyWith<$Res>
    implements $AirQualityCopyWith<$Res> {
  factory _$$AirQualityImplCopyWith(
          _$AirQualityImpl value, $Res Function(_$AirQualityImpl) then) =
      __$$AirQualityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double pm25, double pm10, int usEpaIndex});
}

/// @nodoc
class __$$AirQualityImplCopyWithImpl<$Res>
    extends _$AirQualityCopyWithImpl<$Res, _$AirQualityImpl>
    implements _$$AirQualityImplCopyWith<$Res> {
  __$$AirQualityImplCopyWithImpl(
      _$AirQualityImpl _value, $Res Function(_$AirQualityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pm25 = null,
    Object? pm10 = null,
    Object? usEpaIndex = null,
  }) {
    return _then(_$AirQualityImpl(
      pm25: null == pm25
          ? _value.pm25
          : pm25 // ignore: cast_nullable_to_non_nullable
              as double,
      pm10: null == pm10
          ? _value.pm10
          : pm10 // ignore: cast_nullable_to_non_nullable
              as double,
      usEpaIndex: null == usEpaIndex
          ? _value.usEpaIndex
          : usEpaIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AirQualityImpl implements _AirQuality {
  const _$AirQualityImpl(
      {required this.pm25, required this.pm10, required this.usEpaIndex});

  @override
  final double pm25;
  @override
  final double pm10;
  @override
  final int usEpaIndex;

  @override
  String toString() {
    return 'AirQuality(pm25: $pm25, pm10: $pm10, usEpaIndex: $usEpaIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirQualityImpl &&
            (identical(other.pm25, pm25) || other.pm25 == pm25) &&
            (identical(other.pm10, pm10) || other.pm10 == pm10) &&
            (identical(other.usEpaIndex, usEpaIndex) ||
                other.usEpaIndex == usEpaIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pm25, pm10, usEpaIndex);

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirQualityImplCopyWith<_$AirQualityImpl> get copyWith =>
      __$$AirQualityImplCopyWithImpl<_$AirQualityImpl>(this, _$identity);
}

abstract class _AirQuality implements AirQuality {
  const factory _AirQuality(
      {required final double pm25,
      required final double pm10,
      required final int usEpaIndex}) = _$AirQualityImpl;

  @override
  double get pm25;
  @override
  double get pm10;
  @override
  int get usEpaIndex;

  /// Create a copy of AirQuality
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirQualityImplCopyWith<_$AirQualityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

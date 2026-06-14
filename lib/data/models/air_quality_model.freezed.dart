// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air_quality_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AirQualityModel _$AirQualityModelFromJson(Map<String, dynamic> json) {
  return _AirQualityModel.fromJson(json);
}

/// @nodoc
mixin _$AirQualityModel {
  @JsonKey(name: 'pm2_5')
  double get pm25 => throw _privateConstructorUsedError;
  @JsonKey(name: 'pm10')
  double get pm10 => throw _privateConstructorUsedError;
  @JsonKey(name: 'us-epa-index')
  int get usEpaIndex => throw _privateConstructorUsedError;

  /// Serializes this AirQualityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AirQualityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AirQualityModelCopyWith<AirQualityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirQualityModelCopyWith<$Res> {
  factory $AirQualityModelCopyWith(
          AirQualityModel value, $Res Function(AirQualityModel) then) =
      _$AirQualityModelCopyWithImpl<$Res, AirQualityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pm2_5') double pm25,
      @JsonKey(name: 'pm10') double pm10,
      @JsonKey(name: 'us-epa-index') int usEpaIndex});
}

/// @nodoc
class _$AirQualityModelCopyWithImpl<$Res, $Val extends AirQualityModel>
    implements $AirQualityModelCopyWith<$Res> {
  _$AirQualityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AirQualityModel
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
abstract class _$$AirQualityModelImplCopyWith<$Res>
    implements $AirQualityModelCopyWith<$Res> {
  factory _$$AirQualityModelImplCopyWith(_$AirQualityModelImpl value,
          $Res Function(_$AirQualityModelImpl) then) =
      __$$AirQualityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pm2_5') double pm25,
      @JsonKey(name: 'pm10') double pm10,
      @JsonKey(name: 'us-epa-index') int usEpaIndex});
}

/// @nodoc
class __$$AirQualityModelImplCopyWithImpl<$Res>
    extends _$AirQualityModelCopyWithImpl<$Res, _$AirQualityModelImpl>
    implements _$$AirQualityModelImplCopyWith<$Res> {
  __$$AirQualityModelImplCopyWithImpl(
      _$AirQualityModelImpl _value, $Res Function(_$AirQualityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AirQualityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pm25 = null,
    Object? pm10 = null,
    Object? usEpaIndex = null,
  }) {
    return _then(_$AirQualityModelImpl(
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
@JsonSerializable()
class _$AirQualityModelImpl extends _AirQualityModel {
  const _$AirQualityModelImpl(
      {@JsonKey(name: 'pm2_5') required this.pm25,
      @JsonKey(name: 'pm10') required this.pm10,
      @JsonKey(name: 'us-epa-index') required this.usEpaIndex})
      : super._();

  factory _$AirQualityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AirQualityModelImplFromJson(json);

  @override
  @JsonKey(name: 'pm2_5')
  final double pm25;
  @override
  @JsonKey(name: 'pm10')
  final double pm10;
  @override
  @JsonKey(name: 'us-epa-index')
  final int usEpaIndex;

  @override
  String toString() {
    return 'AirQualityModel(pm25: $pm25, pm10: $pm10, usEpaIndex: $usEpaIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AirQualityModelImpl &&
            (identical(other.pm25, pm25) || other.pm25 == pm25) &&
            (identical(other.pm10, pm10) || other.pm10 == pm10) &&
            (identical(other.usEpaIndex, usEpaIndex) ||
                other.usEpaIndex == usEpaIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pm25, pm10, usEpaIndex);

  /// Create a copy of AirQualityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AirQualityModelImplCopyWith<_$AirQualityModelImpl> get copyWith =>
      __$$AirQualityModelImplCopyWithImpl<_$AirQualityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AirQualityModelImplToJson(
      this,
    );
  }
}

abstract class _AirQualityModel extends AirQualityModel {
  const factory _AirQualityModel(
          {@JsonKey(name: 'pm2_5') required final double pm25,
          @JsonKey(name: 'pm10') required final double pm10,
          @JsonKey(name: 'us-epa-index') required final int usEpaIndex}) =
      _$AirQualityModelImpl;
  const _AirQualityModel._() : super._();

  factory _AirQualityModel.fromJson(Map<String, dynamic> json) =
      _$AirQualityModelImpl.fromJson;

  @override
  @JsonKey(name: 'pm2_5')
  double get pm25;
  @override
  @JsonKey(name: 'pm10')
  double get pm10;
  @override
  @JsonKey(name: 'us-epa-index')
  int get usEpaIndex;

  /// Create a copy of AirQualityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AirQualityModelImplCopyWith<_$AirQualityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

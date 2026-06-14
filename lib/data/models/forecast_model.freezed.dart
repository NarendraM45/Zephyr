// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastDayModel _$ForecastDayModelFromJson(Map<String, dynamic> json) {
  return _ForecastDayModel.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayModel {
  String get date => throw _privateConstructorUsedError;
  DayModel get day => throw _privateConstructorUsedError;
  AstroModel get astro => throw _privateConstructorUsedError;
  List<HourlyModel> get hour => throw _privateConstructorUsedError;

  /// Serializes this ForecastDayModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastDayModelCopyWith<ForecastDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayModelCopyWith<$Res> {
  factory $ForecastDayModelCopyWith(
          ForecastDayModel value, $Res Function(ForecastDayModel) then) =
      _$ForecastDayModelCopyWithImpl<$Res, ForecastDayModel>;
  @useResult
  $Res call(
      {String date, DayModel day, AstroModel astro, List<HourlyModel> hour});

  $DayModelCopyWith<$Res> get day;
  $AstroModelCopyWith<$Res> get astro;
}

/// @nodoc
class _$ForecastDayModelCopyWithImpl<$Res, $Val extends ForecastDayModel>
    implements $ForecastDayModelCopyWith<$Res> {
  _$ForecastDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? day = null,
    Object? astro = null,
    Object? hour = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayModel,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroModel,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourlyModel>,
    ) as $Val);
  }

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayModelCopyWith<$Res> get day {
    return $DayModelCopyWith<$Res>(_value.day, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AstroModelCopyWith<$Res> get astro {
    return $AstroModelCopyWith<$Res>(_value.astro, (value) {
      return _then(_value.copyWith(astro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayModelImplCopyWith<$Res>
    implements $ForecastDayModelCopyWith<$Res> {
  factory _$$ForecastDayModelImplCopyWith(_$ForecastDayModelImpl value,
          $Res Function(_$ForecastDayModelImpl) then) =
      __$$ForecastDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date, DayModel day, AstroModel astro, List<HourlyModel> hour});

  @override
  $DayModelCopyWith<$Res> get day;
  @override
  $AstroModelCopyWith<$Res> get astro;
}

/// @nodoc
class __$$ForecastDayModelImplCopyWithImpl<$Res>
    extends _$ForecastDayModelCopyWithImpl<$Res, _$ForecastDayModelImpl>
    implements _$$ForecastDayModelImplCopyWith<$Res> {
  __$$ForecastDayModelImplCopyWithImpl(_$ForecastDayModelImpl _value,
      $Res Function(_$ForecastDayModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? day = null,
    Object? astro = null,
    Object? hour = null,
  }) {
    return _then(_$ForecastDayModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DayModel,
      astro: null == astro
          ? _value.astro
          : astro // ignore: cast_nullable_to_non_nullable
              as AstroModel,
      hour: null == hour
          ? _value._hour
          : hour // ignore: cast_nullable_to_non_nullable
              as List<HourlyModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayModelImpl extends _ForecastDayModel {
  const _$ForecastDayModelImpl(
      {required this.date,
      required this.day,
      required this.astro,
      required final List<HourlyModel> hour})
      : _hour = hour,
        super._();

  factory _$ForecastDayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayModelImplFromJson(json);

  @override
  final String date;
  @override
  final DayModel day;
  @override
  final AstroModel astro;
  final List<HourlyModel> _hour;
  @override
  List<HourlyModel> get hour {
    if (_hour is EqualUnmodifiableListView) return _hour;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hour);
  }

  @override
  String toString() {
    return 'ForecastDayModel(date: $date, day: $day, astro: $astro, hour: $hour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.astro, astro) || other.astro == astro) &&
            const DeepCollectionEquality().equals(other._hour, _hour));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, day, astro,
      const DeepCollectionEquality().hash(_hour));

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayModelImplCopyWith<_$ForecastDayModelImpl> get copyWith =>
      __$$ForecastDayModelImplCopyWithImpl<_$ForecastDayModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayModelImplToJson(
      this,
    );
  }
}

abstract class _ForecastDayModel extends ForecastDayModel {
  const factory _ForecastDayModel(
      {required final String date,
      required final DayModel day,
      required final AstroModel astro,
      required final List<HourlyModel> hour}) = _$ForecastDayModelImpl;
  const _ForecastDayModel._() : super._();

  factory _ForecastDayModel.fromJson(Map<String, dynamic> json) =
      _$ForecastDayModelImpl.fromJson;

  @override
  String get date;
  @override
  DayModel get day;
  @override
  AstroModel get astro;
  @override
  List<HourlyModel> get hour;

  /// Create a copy of ForecastDayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastDayModelImplCopyWith<_$ForecastDayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayModel _$DayModelFromJson(Map<String, dynamic> json) {
  return _DayModel.fromJson(json);
}

/// @nodoc
mixin _$DayModel {
  @JsonKey(name: 'maxtemp_c', fromJson: SafeJson.toDouble)
  double get maxtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxtemp_f', fromJson: SafeJson.toDouble)
  double get maxtempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_c', fromJson: SafeJson.toDouble)
  double get mintempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'mintemp_f', fromJson: SafeJson.toDouble)
  double get mintempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_c', fromJson: SafeJson.toDouble)
  double get avgtempC => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgtemp_f', fromJson: SafeJson.toDouble)
  double get avgtempF => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_kph', fromJson: SafeJson.toDouble)
  double get maxwindKph => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_mph', fromJson: SafeJson.toDouble)
  double get maxwindMph => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalprecip_mm', fromJson: SafeJson.toDouble)
  double get totalprecipMm => throw _privateConstructorUsedError;
  @JsonKey(fromJson: SafeJson.toDouble)
  double get avghumidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily_chance_of_rain', fromJson: SafeJson.toInt)
  int get dailyChanceOfRain => throw _privateConstructorUsedError;
  ConditionModel get condition => throw _privateConstructorUsedError;
  @JsonKey(fromJson: SafeJson.toDouble)
  double get uv => throw _privateConstructorUsedError;

  /// Serializes this DayModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayModelCopyWith<DayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayModelCopyWith<$Res> {
  factory $DayModelCopyWith(DayModel value, $Res Function(DayModel) then) =
      _$DayModelCopyWithImpl<$Res, DayModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c', fromJson: SafeJson.toDouble) double maxtempC,
      @JsonKey(name: 'maxtemp_f', fromJson: SafeJson.toDouble) double maxtempF,
      @JsonKey(name: 'mintemp_c', fromJson: SafeJson.toDouble) double mintempC,
      @JsonKey(name: 'mintemp_f', fromJson: SafeJson.toDouble) double mintempF,
      @JsonKey(name: 'avgtemp_c', fromJson: SafeJson.toDouble) double avgtempC,
      @JsonKey(name: 'avgtemp_f', fromJson: SafeJson.toDouble) double avgtempF,
      @JsonKey(name: 'maxwind_kph', fromJson: SafeJson.toDouble)
      double maxwindKph,
      @JsonKey(name: 'maxwind_mph', fromJson: SafeJson.toDouble)
      double maxwindMph,
      @JsonKey(name: 'totalprecip_mm', fromJson: SafeJson.toDouble)
      double totalprecipMm,
      @JsonKey(fromJson: SafeJson.toDouble) double avghumidity,
      @JsonKey(name: 'daily_chance_of_rain', fromJson: SafeJson.toInt)
      int dailyChanceOfRain,
      ConditionModel condition,
      @JsonKey(fromJson: SafeJson.toDouble) double uv});

  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class _$DayModelCopyWithImpl<$Res, $Val extends DayModel>
    implements $DayModelCopyWith<$Res> {
  _$DayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = null,
    Object? maxtempF = null,
    Object? mintempC = null,
    Object? mintempF = null,
    Object? avgtempC = null,
    Object? avgtempF = null,
    Object? maxwindKph = null,
    Object? maxwindMph = null,
    Object? totalprecipMm = null,
    Object? avghumidity = null,
    Object? dailyChanceOfRain = null,
    Object? condition = null,
    Object? uv = null,
  }) {
    return _then(_value.copyWith(
      maxtempC: null == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double,
      maxtempF: null == maxtempF
          ? _value.maxtempF
          : maxtempF // ignore: cast_nullable_to_non_nullable
              as double,
      mintempC: null == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double,
      mintempF: null == mintempF
          ? _value.mintempF
          : mintempF // ignore: cast_nullable_to_non_nullable
              as double,
      avgtempC: null == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double,
      avgtempF: null == avgtempF
          ? _value.avgtempF
          : avgtempF // ignore: cast_nullable_to_non_nullable
              as double,
      maxwindKph: null == maxwindKph
          ? _value.maxwindKph
          : maxwindKph // ignore: cast_nullable_to_non_nullable
              as double,
      maxwindMph: null == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as double,
      totalprecipMm: null == totalprecipMm
          ? _value.totalprecipMm
          : totalprecipMm // ignore: cast_nullable_to_non_nullable
              as double,
      avghumidity: null == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as double,
      dailyChanceOfRain: null == dailyChanceOfRain
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of DayModel
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
abstract class _$$DayModelImplCopyWith<$Res>
    implements $DayModelCopyWith<$Res> {
  factory _$$DayModelImplCopyWith(
          _$DayModelImpl value, $Res Function(_$DayModelImpl) then) =
      __$$DayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'maxtemp_c', fromJson: SafeJson.toDouble) double maxtempC,
      @JsonKey(name: 'maxtemp_f', fromJson: SafeJson.toDouble) double maxtempF,
      @JsonKey(name: 'mintemp_c', fromJson: SafeJson.toDouble) double mintempC,
      @JsonKey(name: 'mintemp_f', fromJson: SafeJson.toDouble) double mintempF,
      @JsonKey(name: 'avgtemp_c', fromJson: SafeJson.toDouble) double avgtempC,
      @JsonKey(name: 'avgtemp_f', fromJson: SafeJson.toDouble) double avgtempF,
      @JsonKey(name: 'maxwind_kph', fromJson: SafeJson.toDouble)
      double maxwindKph,
      @JsonKey(name: 'maxwind_mph', fromJson: SafeJson.toDouble)
      double maxwindMph,
      @JsonKey(name: 'totalprecip_mm', fromJson: SafeJson.toDouble)
      double totalprecipMm,
      @JsonKey(fromJson: SafeJson.toDouble) double avghumidity,
      @JsonKey(name: 'daily_chance_of_rain', fromJson: SafeJson.toInt)
      int dailyChanceOfRain,
      ConditionModel condition,
      @JsonKey(fromJson: SafeJson.toDouble) double uv});

  @override
  $ConditionModelCopyWith<$Res> get condition;
}

/// @nodoc
class __$$DayModelImplCopyWithImpl<$Res>
    extends _$DayModelCopyWithImpl<$Res, _$DayModelImpl>
    implements _$$DayModelImplCopyWith<$Res> {
  __$$DayModelImplCopyWithImpl(
      _$DayModelImpl _value, $Res Function(_$DayModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxtempC = null,
    Object? maxtempF = null,
    Object? mintempC = null,
    Object? mintempF = null,
    Object? avgtempC = null,
    Object? avgtempF = null,
    Object? maxwindKph = null,
    Object? maxwindMph = null,
    Object? totalprecipMm = null,
    Object? avghumidity = null,
    Object? dailyChanceOfRain = null,
    Object? condition = null,
    Object? uv = null,
  }) {
    return _then(_$DayModelImpl(
      maxtempC: null == maxtempC
          ? _value.maxtempC
          : maxtempC // ignore: cast_nullable_to_non_nullable
              as double,
      maxtempF: null == maxtempF
          ? _value.maxtempF
          : maxtempF // ignore: cast_nullable_to_non_nullable
              as double,
      mintempC: null == mintempC
          ? _value.mintempC
          : mintempC // ignore: cast_nullable_to_non_nullable
              as double,
      mintempF: null == mintempF
          ? _value.mintempF
          : mintempF // ignore: cast_nullable_to_non_nullable
              as double,
      avgtempC: null == avgtempC
          ? _value.avgtempC
          : avgtempC // ignore: cast_nullable_to_non_nullable
              as double,
      avgtempF: null == avgtempF
          ? _value.avgtempF
          : avgtempF // ignore: cast_nullable_to_non_nullable
              as double,
      maxwindKph: null == maxwindKph
          ? _value.maxwindKph
          : maxwindKph // ignore: cast_nullable_to_non_nullable
              as double,
      maxwindMph: null == maxwindMph
          ? _value.maxwindMph
          : maxwindMph // ignore: cast_nullable_to_non_nullable
              as double,
      totalprecipMm: null == totalprecipMm
          ? _value.totalprecipMm
          : totalprecipMm // ignore: cast_nullable_to_non_nullable
              as double,
      avghumidity: null == avghumidity
          ? _value.avghumidity
          : avghumidity // ignore: cast_nullable_to_non_nullable
              as double,
      dailyChanceOfRain: null == dailyChanceOfRain
          ? _value.dailyChanceOfRain
          : dailyChanceOfRain // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ConditionModel,
      uv: null == uv
          ? _value.uv
          : uv // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayModelImpl implements _DayModel {
  const _$DayModelImpl(
      {@JsonKey(name: 'maxtemp_c', fromJson: SafeJson.toDouble)
      required this.maxtempC,
      @JsonKey(name: 'maxtemp_f', fromJson: SafeJson.toDouble)
      required this.maxtempF,
      @JsonKey(name: 'mintemp_c', fromJson: SafeJson.toDouble)
      required this.mintempC,
      @JsonKey(name: 'mintemp_f', fromJson: SafeJson.toDouble)
      required this.mintempF,
      @JsonKey(name: 'avgtemp_c', fromJson: SafeJson.toDouble)
      required this.avgtempC,
      @JsonKey(name: 'avgtemp_f', fromJson: SafeJson.toDouble)
      required this.avgtempF,
      @JsonKey(name: 'maxwind_kph', fromJson: SafeJson.toDouble)
      required this.maxwindKph,
      @JsonKey(name: 'maxwind_mph', fromJson: SafeJson.toDouble)
      required this.maxwindMph,
      @JsonKey(name: 'totalprecip_mm', fromJson: SafeJson.toDouble)
      required this.totalprecipMm,
      @JsonKey(fromJson: SafeJson.toDouble) required this.avghumidity,
      @JsonKey(name: 'daily_chance_of_rain', fromJson: SafeJson.toInt)
      required this.dailyChanceOfRain,
      required this.condition,
      @JsonKey(fromJson: SafeJson.toDouble) required this.uv});

  factory _$DayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayModelImplFromJson(json);

  @override
  @JsonKey(name: 'maxtemp_c', fromJson: SafeJson.toDouble)
  final double maxtempC;
  @override
  @JsonKey(name: 'maxtemp_f', fromJson: SafeJson.toDouble)
  final double maxtempF;
  @override
  @JsonKey(name: 'mintemp_c', fromJson: SafeJson.toDouble)
  final double mintempC;
  @override
  @JsonKey(name: 'mintemp_f', fromJson: SafeJson.toDouble)
  final double mintempF;
  @override
  @JsonKey(name: 'avgtemp_c', fromJson: SafeJson.toDouble)
  final double avgtempC;
  @override
  @JsonKey(name: 'avgtemp_f', fromJson: SafeJson.toDouble)
  final double avgtempF;
  @override
  @JsonKey(name: 'maxwind_kph', fromJson: SafeJson.toDouble)
  final double maxwindKph;
  @override
  @JsonKey(name: 'maxwind_mph', fromJson: SafeJson.toDouble)
  final double maxwindMph;
  @override
  @JsonKey(name: 'totalprecip_mm', fromJson: SafeJson.toDouble)
  final double totalprecipMm;
  @override
  @JsonKey(fromJson: SafeJson.toDouble)
  final double avghumidity;
  @override
  @JsonKey(name: 'daily_chance_of_rain', fromJson: SafeJson.toInt)
  final int dailyChanceOfRain;
  @override
  final ConditionModel condition;
  @override
  @JsonKey(fromJson: SafeJson.toDouble)
  final double uv;

  @override
  String toString() {
    return 'DayModel(maxtempC: $maxtempC, maxtempF: $maxtempF, mintempC: $mintempC, mintempF: $mintempF, avgtempC: $avgtempC, avgtempF: $avgtempF, maxwindKph: $maxwindKph, maxwindMph: $maxwindMph, totalprecipMm: $totalprecipMm, avghumidity: $avghumidity, dailyChanceOfRain: $dailyChanceOfRain, condition: $condition, uv: $uv)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayModelImpl &&
            (identical(other.maxtempC, maxtempC) ||
                other.maxtempC == maxtempC) &&
            (identical(other.maxtempF, maxtempF) ||
                other.maxtempF == maxtempF) &&
            (identical(other.mintempC, mintempC) ||
                other.mintempC == mintempC) &&
            (identical(other.mintempF, mintempF) ||
                other.mintempF == mintempF) &&
            (identical(other.avgtempC, avgtempC) ||
                other.avgtempC == avgtempC) &&
            (identical(other.avgtempF, avgtempF) ||
                other.avgtempF == avgtempF) &&
            (identical(other.maxwindKph, maxwindKph) ||
                other.maxwindKph == maxwindKph) &&
            (identical(other.maxwindMph, maxwindMph) ||
                other.maxwindMph == maxwindMph) &&
            (identical(other.totalprecipMm, totalprecipMm) ||
                other.totalprecipMm == totalprecipMm) &&
            (identical(other.avghumidity, avghumidity) ||
                other.avghumidity == avghumidity) &&
            (identical(other.dailyChanceOfRain, dailyChanceOfRain) ||
                other.dailyChanceOfRain == dailyChanceOfRain) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.uv, uv) || other.uv == uv));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      maxtempC,
      maxtempF,
      mintempC,
      mintempF,
      avgtempC,
      avgtempF,
      maxwindKph,
      maxwindMph,
      totalprecipMm,
      avghumidity,
      dailyChanceOfRain,
      condition,
      uv);

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayModelImplCopyWith<_$DayModelImpl> get copyWith =>
      __$$DayModelImplCopyWithImpl<_$DayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayModelImplToJson(
      this,
    );
  }
}

abstract class _DayModel implements DayModel {
  const factory _DayModel(
      {@JsonKey(name: 'maxtemp_c', fromJson: SafeJson.toDouble)
      required final double maxtempC,
      @JsonKey(name: 'maxtemp_f', fromJson: SafeJson.toDouble)
      required final double maxtempF,
      @JsonKey(name: 'mintemp_c', fromJson: SafeJson.toDouble)
      required final double mintempC,
      @JsonKey(name: 'mintemp_f', fromJson: SafeJson.toDouble)
      required final double mintempF,
      @JsonKey(name: 'avgtemp_c', fromJson: SafeJson.toDouble)
      required final double avgtempC,
      @JsonKey(name: 'avgtemp_f', fromJson: SafeJson.toDouble)
      required final double avgtempF,
      @JsonKey(name: 'maxwind_kph', fromJson: SafeJson.toDouble)
      required final double maxwindKph,
      @JsonKey(name: 'maxwind_mph', fromJson: SafeJson.toDouble)
      required final double maxwindMph,
      @JsonKey(name: 'totalprecip_mm', fromJson: SafeJson.toDouble)
      required final double totalprecipMm,
      @JsonKey(fromJson: SafeJson.toDouble) required final double avghumidity,
      @JsonKey(name: 'daily_chance_of_rain', fromJson: SafeJson.toInt)
      required final int dailyChanceOfRain,
      required final ConditionModel condition,
      @JsonKey(fromJson: SafeJson.toDouble)
      required final double uv}) = _$DayModelImpl;

  factory _DayModel.fromJson(Map<String, dynamic> json) =
      _$DayModelImpl.fromJson;

  @override
  @JsonKey(name: 'maxtemp_c', fromJson: SafeJson.toDouble)
  double get maxtempC;
  @override
  @JsonKey(name: 'maxtemp_f', fromJson: SafeJson.toDouble)
  double get maxtempF;
  @override
  @JsonKey(name: 'mintemp_c', fromJson: SafeJson.toDouble)
  double get mintempC;
  @override
  @JsonKey(name: 'mintemp_f', fromJson: SafeJson.toDouble)
  double get mintempF;
  @override
  @JsonKey(name: 'avgtemp_c', fromJson: SafeJson.toDouble)
  double get avgtempC;
  @override
  @JsonKey(name: 'avgtemp_f', fromJson: SafeJson.toDouble)
  double get avgtempF;
  @override
  @JsonKey(name: 'maxwind_kph', fromJson: SafeJson.toDouble)
  double get maxwindKph;
  @override
  @JsonKey(name: 'maxwind_mph', fromJson: SafeJson.toDouble)
  double get maxwindMph;
  @override
  @JsonKey(name: 'totalprecip_mm', fromJson: SafeJson.toDouble)
  double get totalprecipMm;
  @override
  @JsonKey(fromJson: SafeJson.toDouble)
  double get avghumidity;
  @override
  @JsonKey(name: 'daily_chance_of_rain', fromJson: SafeJson.toInt)
  int get dailyChanceOfRain;
  @override
  ConditionModel get condition;
  @override
  @JsonKey(fromJson: SafeJson.toDouble)
  double get uv;

  /// Create a copy of DayModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayModelImplCopyWith<_$DayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AstroModel _$AstroModelFromJson(Map<String, dynamic> json) {
  return _AstroModel.fromJson(json);
}

/// @nodoc
mixin _$AstroModel {
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_phase')
  String get moonPhase => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_illumination', fromJson: SafeJson.toInt)
  int get moonIllumination => throw _privateConstructorUsedError;

  /// Serializes this AstroModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AstroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AstroModelCopyWith<AstroModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstroModelCopyWith<$Res> {
  factory $AstroModelCopyWith(
          AstroModel value, $Res Function(AstroModel) then) =
      _$AstroModelCopyWithImpl<$Res, AstroModel>;
  @useResult
  $Res call(
      {String sunrise,
      String sunset,
      @JsonKey(name: 'moon_phase') String moonPhase,
      @JsonKey(name: 'moon_illumination', fromJson: SafeJson.toInt)
      int moonIllumination});
}

/// @nodoc
class _$AstroModelCopyWithImpl<$Res, $Val extends AstroModel>
    implements $AstroModelCopyWith<$Res> {
  _$AstroModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AstroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonPhase = null,
    Object? moonIllumination = null,
  }) {
    return _then(_value.copyWith(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      moonPhase: null == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as String,
      moonIllumination: null == moonIllumination
          ? _value.moonIllumination
          : moonIllumination // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AstroModelImplCopyWith<$Res>
    implements $AstroModelCopyWith<$Res> {
  factory _$$AstroModelImplCopyWith(
          _$AstroModelImpl value, $Res Function(_$AstroModelImpl) then) =
      __$$AstroModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sunrise,
      String sunset,
      @JsonKey(name: 'moon_phase') String moonPhase,
      @JsonKey(name: 'moon_illumination', fromJson: SafeJson.toInt)
      int moonIllumination});
}

/// @nodoc
class __$$AstroModelImplCopyWithImpl<$Res>
    extends _$AstroModelCopyWithImpl<$Res, _$AstroModelImpl>
    implements _$$AstroModelImplCopyWith<$Res> {
  __$$AstroModelImplCopyWithImpl(
      _$AstroModelImpl _value, $Res Function(_$AstroModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AstroModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonPhase = null,
    Object? moonIllumination = null,
  }) {
    return _then(_$AstroModelImpl(
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      moonPhase: null == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as String,
      moonIllumination: null == moonIllumination
          ? _value.moonIllumination
          : moonIllumination // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AstroModelImpl implements _AstroModel {
  const _$AstroModelImpl(
      {required this.sunrise,
      required this.sunset,
      @JsonKey(name: 'moon_phase') required this.moonPhase,
      @JsonKey(name: 'moon_illumination', fromJson: SafeJson.toInt)
      required this.moonIllumination});

  factory _$AstroModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstroModelImplFromJson(json);

  @override
  final String sunrise;
  @override
  final String sunset;
  @override
  @JsonKey(name: 'moon_phase')
  final String moonPhase;
  @override
  @JsonKey(name: 'moon_illumination', fromJson: SafeJson.toInt)
  final int moonIllumination;

  @override
  String toString() {
    return 'AstroModel(sunrise: $sunrise, sunset: $sunset, moonPhase: $moonPhase, moonIllumination: $moonIllumination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstroModelImpl &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.moonIllumination, moonIllumination) ||
                other.moonIllumination == moonIllumination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sunrise, sunset, moonPhase, moonIllumination);

  /// Create a copy of AstroModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AstroModelImplCopyWith<_$AstroModelImpl> get copyWith =>
      __$$AstroModelImplCopyWithImpl<_$AstroModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AstroModelImplToJson(
      this,
    );
  }
}

abstract class _AstroModel implements AstroModel {
  const factory _AstroModel(
      {required final String sunrise,
      required final String sunset,
      @JsonKey(name: 'moon_phase') required final String moonPhase,
      @JsonKey(name: 'moon_illumination', fromJson: SafeJson.toInt)
      required final int moonIllumination}) = _$AstroModelImpl;

  factory _AstroModel.fromJson(Map<String, dynamic> json) =
      _$AstroModelImpl.fromJson;

  @override
  String get sunrise;
  @override
  String get sunset;
  @override
  @JsonKey(name: 'moon_phase')
  String get moonPhase;
  @override
  @JsonKey(name: 'moon_illumination', fromJson: SafeJson.toInt)
  int get moonIllumination;

  /// Create a copy of AstroModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AstroModelImplCopyWith<_$AstroModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NetworkFailureImplCopyWith(_$NetworkFailureImpl value,
          $Res Function(_$NetworkFailureImpl) then) =
      __$$NetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NetworkFailureImpl>
    implements _$$NetworkFailureImplCopyWith<$Res> {
  __$$NetworkFailureImplCopyWithImpl(
      _$NetworkFailureImpl _value, $Res Function(_$NetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NetworkFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkFailureImpl implements NetworkFailure {
  const _$NetworkFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.network(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      __$$NetworkFailureImplCopyWithImpl<_$NetworkFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) {
    return network?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure implements Failure {
  const factory NetworkFailure({required final String message}) =
      _$NetworkFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkFailureImplCopyWith<_$NetworkFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$NotFoundFailureImplCopyWith(_$NotFoundFailureImpl value,
          $Res Function(_$NotFoundFailureImpl) then) =
      __$$NotFoundFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailureImpl>
    implements _$$NotFoundFailureImplCopyWith<$Res> {
  __$$NotFoundFailureImplCopyWithImpl(
      _$NotFoundFailureImpl _value, $Res Function(_$NotFoundFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotFoundFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundFailureImpl implements NotFoundFailure {
  const _$NotFoundFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      __$$NotFoundFailureImplCopyWithImpl<_$NotFoundFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundFailure implements Failure {
  const factory NotFoundFailure({required final String message}) =
      _$NotFoundFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundFailureImplCopyWith<_$NotFoundFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnauthorizedFailureImplCopyWith(_$UnauthorizedFailureImpl value,
          $Res Function(_$UnauthorizedFailureImpl) then) =
      __$$UnauthorizedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnauthorizedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedFailureImpl>
    implements _$$UnauthorizedFailureImplCopyWith<$Res> {
  __$$UnauthorizedFailureImplCopyWithImpl(_$UnauthorizedFailureImpl _value,
      $Res Function(_$UnauthorizedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnauthorizedFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnauthorizedFailureImpl implements UnauthorizedFailure {
  const _$UnauthorizedFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unauthorized(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedFailureImplCopyWith<_$UnauthorizedFailureImpl> get copyWith =>
      __$$UnauthorizedFailureImplCopyWithImpl<_$UnauthorizedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) {
    return unauthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) {
    return unauthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedFailure implements Failure {
  const factory UnauthorizedFailure({required final String message}) =
      _$UnauthorizedFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedFailureImplCopyWith<_$UnauthorizedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RateLimitedFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$RateLimitedFailureImplCopyWith(_$RateLimitedFailureImpl value,
          $Res Function(_$RateLimitedFailureImpl) then) =
      __$$RateLimitedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RateLimitedFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$RateLimitedFailureImpl>
    implements _$$RateLimitedFailureImplCopyWith<$Res> {
  __$$RateLimitedFailureImplCopyWithImpl(_$RateLimitedFailureImpl _value,
      $Res Function(_$RateLimitedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RateLimitedFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RateLimitedFailureImpl implements RateLimitedFailure {
  const _$RateLimitedFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.rateLimited(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateLimitedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RateLimitedFailureImplCopyWith<_$RateLimitedFailureImpl> get copyWith =>
      __$$RateLimitedFailureImplCopyWithImpl<_$RateLimitedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) {
    return rateLimited(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) {
    return rateLimited?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (rateLimited != null) {
      return rateLimited(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return rateLimited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return rateLimited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (rateLimited != null) {
      return rateLimited(this);
    }
    return orElse();
  }
}

abstract class RateLimitedFailure implements Failure {
  const factory RateLimitedFailure({required final String message}) =
      _$RateLimitedFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RateLimitedFailureImplCopyWith<_$RateLimitedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl({required this.code, required this.message});

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) {
    return serverError(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) {
    return serverError?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(
      {required final int code,
      required final String message}) = _$ServerFailureImpl;

  int get code;
  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$CacheFailureImplCopyWith(
          _$CacheFailureImpl value, $Res Function(_$CacheFailureImpl) then) =
      __$$CacheFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CacheFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheFailureImpl>
    implements _$$CacheFailureImplCopyWith<$Res> {
  __$$CacheFailureImplCopyWithImpl(
      _$CacheFailureImpl _value, $Res Function(_$CacheFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CacheFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CacheFailureImpl implements CacheFailure {
  const _$CacheFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cache(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      __$$CacheFailureImplCopyWithImpl<_$CacheFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) {
    return cache(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) {
    return cache?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure({required final String message}) =
      _$CacheFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheFailureImplCopyWith<_$CacheFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$LocationFailureImplCopyWith(_$LocationFailureImpl value,
          $Res Function(_$LocationFailureImpl) then) =
      __$$LocationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LocationFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$LocationFailureImpl>
    implements _$$LocationFailureImplCopyWith<$Res> {
  __$$LocationFailureImplCopyWithImpl(
      _$LocationFailureImpl _value, $Res Function(_$LocationFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LocationFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationFailureImpl implements LocationFailure {
  const _$LocationFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.location(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFailureImplCopyWith<_$LocationFailureImpl> get copyWith =>
      __$$LocationFailureImplCopyWithImpl<_$LocationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) {
    return location(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) {
    return location?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return location(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return location?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (location != null) {
      return location(this);
    }
    return orElse();
  }
}

abstract class LocationFailure implements Failure {
  const factory LocationFailure({required final String message}) =
      _$LocationFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationFailureImplCopyWith<_$LocationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) network,
    required TResult Function(String message) notFound,
    required TResult Function(String message) unauthorized,
    required TResult Function(String message) rateLimited,
    required TResult Function(int code, String message) serverError,
    required TResult Function(String message) cache,
    required TResult Function(String message) location,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? network,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? unauthorized,
    TResult? Function(String message)? rateLimited,
    TResult? Function(int code, String message)? serverError,
    TResult? Function(String message)? cache,
    TResult? Function(String message)? location,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? network,
    TResult Function(String message)? notFound,
    TResult Function(String message)? unauthorized,
    TResult Function(String message)? rateLimited,
    TResult Function(int code, String message)? serverError,
    TResult Function(String message)? cache,
    TResult Function(String message)? location,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure value) network,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(UnauthorizedFailure value) unauthorized,
    required TResult Function(RateLimitedFailure value) rateLimited,
    required TResult Function(ServerFailure value) serverError,
    required TResult Function(CacheFailure value) cache,
    required TResult Function(LocationFailure value) location,
    required TResult Function(UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkFailure value)? network,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(UnauthorizedFailure value)? unauthorized,
    TResult? Function(RateLimitedFailure value)? rateLimited,
    TResult? Function(ServerFailure value)? serverError,
    TResult? Function(CacheFailure value)? cache,
    TResult? Function(LocationFailure value)? location,
    TResult? Function(UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure value)? network,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(UnauthorizedFailure value)? unauthorized,
    TResult Function(RateLimitedFailure value)? rateLimited,
    TResult Function(ServerFailure value)? serverError,
    TResult Function(CacheFailure value)? cache,
    TResult Function(LocationFailure value)? location,
    TResult Function(UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements Failure {
  const factory UnknownFailure({required final String message}) =
      _$UnknownFailureImpl;

  @override
  String get message;

  /// Create a copy of Failure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

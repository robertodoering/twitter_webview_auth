// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twitter_auth_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TwitterAuthResultTearOff {
  const _$TwitterAuthResultTearOff();

  _Success success(
      {required String token, required String secret, required String userId}) {
    return _Success(
      token: token,
      secret: secret,
      userId: userId,
    );
  }

  _Failure failure([dynamic error, StackTrace? stackTrace]) {
    return _Failure(
      error,
      stackTrace,
    );
  }

  _Cancelled cancelled() {
    return const _Cancelled();
  }
}

/// @nodoc
const $TwitterAuthResult = _$TwitterAuthResultTearOff();

/// @nodoc
mixin _$TwitterAuthResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String secret, String userId)
        success,
    required TResult Function(dynamic error, StackTrace? stackTrace) failure,
    required TResult Function() cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String secret, String userId)? success,
    TResult Function(dynamic error, StackTrace? stackTrace)? failure,
    TResult Function()? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String secret, String userId)? success,
    TResult Function(dynamic error, StackTrace? stackTrace)? failure,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancelled value) cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancelled value)? cancelled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterAuthResultCopyWith<$Res> {
  factory $TwitterAuthResultCopyWith(
          TwitterAuthResult value, $Res Function(TwitterAuthResult) then) =
      _$TwitterAuthResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$TwitterAuthResultCopyWithImpl<$Res>
    implements $TwitterAuthResultCopyWith<$Res> {
  _$TwitterAuthResultCopyWithImpl(this._value, this._then);

  final TwitterAuthResult _value;
  // ignore: unused_field
  final $Res Function(TwitterAuthResult) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({String token, String secret, String userId});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$TwitterAuthResultCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? token = freezed,
    Object? secret = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Success(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      secret: secret == freezed
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(
      {required this.token, required this.secret, required this.userId});

  @override
  final String token;
  @override
  final String secret;
  @override
  final String userId;

  @override
  String toString() {
    return 'TwitterAuthResult.success(token: $token, secret: $secret, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Success &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.secret, secret) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(secret),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String secret, String userId)
        success,
    required TResult Function(dynamic error, StackTrace? stackTrace) failure,
    required TResult Function() cancelled,
  }) {
    return success(token, secret, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String secret, String userId)? success,
    TResult Function(dynamic error, StackTrace? stackTrace)? failure,
    TResult Function()? cancelled,
  }) {
    return success?.call(token, secret, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String secret, String userId)? success,
    TResult Function(dynamic error, StackTrace? stackTrace)? failure,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(token, secret, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancelled value)? cancelled,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TwitterAuthResult {
  const factory _Success(
      {required String token,
      required String secret,
      required String userId}) = _$_Success;

  String get token;
  String get secret;
  String get userId;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$TwitterAuthResultCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_Failure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure([this.error, this.stackTrace]);

  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'TwitterAuthResult.failure(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String secret, String userId)
        success,
    required TResult Function(dynamic error, StackTrace? stackTrace) failure,
    required TResult Function() cancelled,
  }) {
    return failure(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String secret, String userId)? success,
    TResult Function(dynamic error, StackTrace? stackTrace)? failure,
    TResult Function()? cancelled,
  }) {
    return failure?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String secret, String userId)? success,
    TResult Function(dynamic error, StackTrace? stackTrace)? failure,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancelled value)? cancelled,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements TwitterAuthResult {
  const factory _Failure([dynamic error, StackTrace? stackTrace]) = _$_Failure;

  dynamic get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CancelledCopyWith<$Res> {
  factory _$CancelledCopyWith(
          _Cancelled value, $Res Function(_Cancelled) then) =
      __$CancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelledCopyWithImpl<$Res>
    extends _$TwitterAuthResultCopyWithImpl<$Res>
    implements _$CancelledCopyWith<$Res> {
  __$CancelledCopyWithImpl(_Cancelled _value, $Res Function(_Cancelled) _then)
      : super(_value, (v) => _then(v as _Cancelled));

  @override
  _Cancelled get _value => super._value as _Cancelled;
}

/// @nodoc

class _$_Cancelled implements _Cancelled {
  const _$_Cancelled();

  @override
  String toString() {
    return 'TwitterAuthResult.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String secret, String userId)
        success,
    required TResult Function(dynamic error, StackTrace? stackTrace) failure,
    required TResult Function() cancelled,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String token, String secret, String userId)? success,
    TResult Function(dynamic error, StackTrace? stackTrace)? failure,
    TResult Function()? cancelled,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String secret, String userId)? success,
    TResult Function(dynamic error, StackTrace? stackTrace)? failure,
    TResult Function()? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Cancelled value) cancelled,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancelled value)? cancelled,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_Cancelled value)? cancelled,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements TwitterAuthResult {
  const factory _Cancelled() = _$_Cancelled;
}

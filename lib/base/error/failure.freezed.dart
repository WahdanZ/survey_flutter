// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _ErrorFailure call(String code) {
    return _ErrorFailure(
      code,
    );
  }

  _ApiFailure api({dynamic message}) {
    return _ApiFailure(
      message: message,
    );
  }

  _UnAuthorizedFailure unAuthorized({dynamic message}) {
    return _UnAuthorizedFailure(
      message: message,
    );
  }

  _NoInternetFailure noInternet({dynamic message}) {
    return _NoInternetFailure(
      message: message,
    );
  }

  _UnknownFailure unknown({dynamic message}) {
    return _UnknownFailure(
      message: message,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$ErrorFailureCopyWith<$Res> {
  factory _$ErrorFailureCopyWith(
          _ErrorFailure value, $Res Function(_ErrorFailure) then) =
      __$ErrorFailureCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class __$ErrorFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ErrorFailureCopyWith<$Res> {
  __$ErrorFailureCopyWithImpl(
      _ErrorFailure _value, $Res Function(_ErrorFailure) _then)
      : super(_value, (v) => _then(v as _ErrorFailure));

  @override
  _ErrorFailure get _value => super._value as _ErrorFailure;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_ErrorFailure(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorFailure implements _ErrorFailure {
  const _$_ErrorFailure(this.code);

  @override
  final String code;

  @override
  String toString() {
    return 'Failure(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorFailure &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  _$ErrorFailureCopyWith<_ErrorFailure> get copyWith =>
      __$ErrorFailureCopyWithImpl<_ErrorFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
  }) {
    return $default(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
  }) {
    return $default?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ErrorFailure implements Failure {
  const factory _ErrorFailure(String code) = _$_ErrorFailure;

  String get code;
  @JsonKey(ignore: true)
  _$ErrorFailureCopyWith<_ErrorFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ApiFailureCopyWith<$Res> {
  factory _$ApiFailureCopyWith(
          _ApiFailure value, $Res Function(_ApiFailure) then) =
      __$ApiFailureCopyWithImpl<$Res>;
  $Res call({dynamic message});
}

/// @nodoc
class __$ApiFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ApiFailureCopyWith<$Res> {
  __$ApiFailureCopyWithImpl(
      _ApiFailure _value, $Res Function(_ApiFailure) _then)
      : super(_value, (v) => _then(v as _ApiFailure));

  @override
  _ApiFailure get _value => super._value as _ApiFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ApiFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ApiFailure implements _ApiFailure {
  const _$_ApiFailure({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'Failure.api(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ApiFailureCopyWith<_ApiFailure> get copyWith =>
      __$ApiFailureCopyWithImpl<_ApiFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
  }) {
    return api(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
  }) {
    return api?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
  }) {
    return api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class _ApiFailure implements Failure {
  const factory _ApiFailure({dynamic message}) = _$_ApiFailure;

  dynamic get message;
  @JsonKey(ignore: true)
  _$ApiFailureCopyWith<_ApiFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnAuthorizedFailureCopyWith<$Res> {
  factory _$UnAuthorizedFailureCopyWith(_UnAuthorizedFailure value,
          $Res Function(_UnAuthorizedFailure) then) =
      __$UnAuthorizedFailureCopyWithImpl<$Res>;
  $Res call({dynamic message});
}

/// @nodoc
class __$UnAuthorizedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$UnAuthorizedFailureCopyWith<$Res> {
  __$UnAuthorizedFailureCopyWithImpl(
      _UnAuthorizedFailure _value, $Res Function(_UnAuthorizedFailure) _then)
      : super(_value, (v) => _then(v as _UnAuthorizedFailure));

  @override
  _UnAuthorizedFailure get _value => super._value as _UnAuthorizedFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UnAuthorizedFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UnAuthorizedFailure implements _UnAuthorizedFailure {
  const _$_UnAuthorizedFailure({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'Failure.unAuthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnAuthorizedFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UnAuthorizedFailureCopyWith<_UnAuthorizedFailure> get copyWith =>
      __$UnAuthorizedFailureCopyWithImpl<_UnAuthorizedFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
  }) {
    return unAuthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
  }) {
    return unAuthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorizedFailure implements Failure {
  const factory _UnAuthorizedFailure({dynamic message}) =
      _$_UnAuthorizedFailure;

  dynamic get message;
  @JsonKey(ignore: true)
  _$UnAuthorizedFailureCopyWith<_UnAuthorizedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoInternetFailureCopyWith<$Res> {
  factory _$NoInternetFailureCopyWith(
          _NoInternetFailure value, $Res Function(_NoInternetFailure) then) =
      __$NoInternetFailureCopyWithImpl<$Res>;
  $Res call({dynamic message});
}

/// @nodoc
class __$NoInternetFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NoInternetFailureCopyWith<$Res> {
  __$NoInternetFailureCopyWithImpl(
      _NoInternetFailure _value, $Res Function(_NoInternetFailure) _then)
      : super(_value, (v) => _then(v as _NoInternetFailure));

  @override
  _NoInternetFailure get _value => super._value as _NoInternetFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_NoInternetFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_NoInternetFailure implements _NoInternetFailure {
  const _$_NoInternetFailure({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'Failure.noInternet(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoInternetFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$NoInternetFailureCopyWith<_NoInternetFailure> get copyWith =>
      __$NoInternetFailureCopyWithImpl<_NoInternetFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
  }) {
    return noInternet(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
  }) {
    return noInternet?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternetFailure implements Failure {
  const factory _NoInternetFailure({dynamic message}) = _$_NoInternetFailure;

  dynamic get message;
  @JsonKey(ignore: true)
  _$NoInternetFailureCopyWith<_NoInternetFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnknownFailureCopyWith<$Res> {
  factory _$UnknownFailureCopyWith(
          _UnknownFailure value, $Res Function(_UnknownFailure) then) =
      __$UnknownFailureCopyWithImpl<$Res>;
  $Res call({dynamic message});
}

/// @nodoc
class __$UnknownFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnknownFailureCopyWith<$Res> {
  __$UnknownFailureCopyWithImpl(
      _UnknownFailure _value, $Res Function(_UnknownFailure) _then)
      : super(_value, (v) => _then(v as _UnknownFailure));

  @override
  _UnknownFailure get _value => super._value as _UnknownFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_UnknownFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UnknownFailure implements _UnknownFailure {
  const _$_UnknownFailure({this.message});

  @override
  final dynamic message;

  @override
  String toString() {
    return 'Failure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnknownFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$UnknownFailureCopyWith<_UnknownFailure> get copyWith =>
      __$UnknownFailureCopyWithImpl<_UnknownFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String code) $default, {
    required TResult Function(dynamic message) api,
    required TResult Function(dynamic message) unAuthorized,
    required TResult Function(dynamic message) noInternet,
    required TResult Function(dynamic message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String code)? $default, {
    TResult Function(dynamic message)? api,
    TResult Function(dynamic message)? unAuthorized,
    TResult Function(dynamic message)? noInternet,
    TResult Function(dynamic message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ErrorFailure value) $default, {
    required TResult Function(_ApiFailure value) api,
    required TResult Function(_UnAuthorizedFailure value) unAuthorized,
    required TResult Function(_NoInternetFailure value) noInternet,
    required TResult Function(_UnknownFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ErrorFailure value)? $default, {
    TResult Function(_ApiFailure value)? api,
    TResult Function(_UnAuthorizedFailure value)? unAuthorized,
    TResult Function(_NoInternetFailure value)? noInternet,
    TResult Function(_UnknownFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownFailure implements Failure {
  const factory _UnknownFailure({dynamic message}) = _$_UnknownFailure;

  dynamic get message;
  @JsonKey(ignore: true)
  _$UnknownFailureCopyWith<_UnknownFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

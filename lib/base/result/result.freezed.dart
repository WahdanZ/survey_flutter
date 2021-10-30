// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomResultTearOff {
  const _$CustomResultTearOff();

  _ResultSuccess<T> call<T>(T result) {
    return _ResultSuccess<T>(
      result,
    );
  }

  _ResultFailure<T> failure<T>(Failure error) {
    return _ResultFailure<T>(
      error,
    );
  }
}

/// @nodoc
const $CustomResult = _$CustomResultTearOff();

/// @nodoc
mixin _$CustomResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T result) $default, {
    required TResult Function(Failure error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value) $default, {
    required TResult Function(_ResultFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomResultCopyWith<T, $Res> {
  factory $CustomResultCopyWith(
          CustomResult<T> value, $Res Function(CustomResult<T>) then) =
      _$CustomResultCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CustomResultCopyWithImpl<T, $Res>
    implements $CustomResultCopyWith<T, $Res> {
  _$CustomResultCopyWithImpl(this._value, this._then);

  final CustomResult<T> _value;
  // ignore: unused_field
  final $Res Function(CustomResult<T>) _then;
}

/// @nodoc
abstract class _$ResultSuccessCopyWith<T, $Res> {
  factory _$ResultSuccessCopyWith(
          _ResultSuccess<T> value, $Res Function(_ResultSuccess<T>) then) =
      __$ResultSuccessCopyWithImpl<T, $Res>;
  $Res call({T result});
}

/// @nodoc
class __$ResultSuccessCopyWithImpl<T, $Res>
    extends _$CustomResultCopyWithImpl<T, $Res>
    implements _$ResultSuccessCopyWith<T, $Res> {
  __$ResultSuccessCopyWithImpl(
      _ResultSuccess<T> _value, $Res Function(_ResultSuccess<T>) _then)
      : super(_value, (v) => _then(v as _ResultSuccess<T>));

  @override
  _ResultSuccess<T> get _value => super._value as _ResultSuccess<T>;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_ResultSuccess<T>(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ResultSuccess<T> implements _ResultSuccess<T> {
  const _$_ResultSuccess(this.result);

  @override
  final T result;

  @override
  String toString() {
    return 'CustomResult<$T>(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultSuccess<T> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$ResultSuccessCopyWith<T, _ResultSuccess<T>> get copyWith =>
      __$ResultSuccessCopyWithImpl<T, _ResultSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T result) $default, {
    required TResult Function(Failure error) failure,
  }) {
    return $default(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
  }) {
    return $default?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value) $default, {
    required TResult Function(_ResultFailure<T> value) failure,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ResultSuccess<T> implements CustomResult<T> {
  const factory _ResultSuccess(T result) = _$_ResultSuccess<T>;

  T get result;
  @JsonKey(ignore: true)
  _$ResultSuccessCopyWith<T, _ResultSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultFailureCopyWith<T, $Res> {
  factory _$ResultFailureCopyWith(
          _ResultFailure<T> value, $Res Function(_ResultFailure<T>) then) =
      __$ResultFailureCopyWithImpl<T, $Res>;
  $Res call({Failure error});

  $FailureCopyWith<$Res> get error;
}

/// @nodoc
class __$ResultFailureCopyWithImpl<T, $Res>
    extends _$CustomResultCopyWithImpl<T, $Res>
    implements _$ResultFailureCopyWith<T, $Res> {
  __$ResultFailureCopyWithImpl(
      _ResultFailure<T> _value, $Res Function(_ResultFailure<T>) _then)
      : super(_value, (v) => _then(v as _ResultFailure<T>));

  @override
  _ResultFailure<T> get _value => super._value as _ResultFailure<T>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_ResultFailure<T>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get error {
    return $FailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_ResultFailure<T> implements _ResultFailure<T> {
  const _$_ResultFailure(this.error);

  @override
  final Failure error;

  @override
  String toString() {
    return 'CustomResult<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultFailure<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  _$ResultFailureCopyWith<T, _ResultFailure<T>> get copyWith =>
      __$ResultFailureCopyWithImpl<T, _ResultFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T result) $default, {
    required TResult Function(Failure error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T result)? $default, {
    TResult Function(Failure error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value) $default, {
    required TResult Function(_ResultFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultSuccess<T> value)? $default, {
    TResult Function(_ResultFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ResultFailure<T> implements CustomResult<T> {
  const factory _ResultFailure(Failure error) = _$_ResultFailure<T>;

  Failure get error;
  @JsonKey(ignore: true)
  _$ResultFailureCopyWith<T, _ResultFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

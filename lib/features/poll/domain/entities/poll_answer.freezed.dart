// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poll_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PollAnswerTearOff {
  const _$PollAnswerTearOff();

  _PollAnswer call({required String questionId, required String value}) {
    return _PollAnswer(
      questionId: questionId,
      value: value,
    );
  }
}

/// @nodoc
const $PollAnswer = _$PollAnswerTearOff();

/// @nodoc
mixin _$PollAnswer {
  String get questionId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PollAnswerCopyWith<PollAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollAnswerCopyWith<$Res> {
  factory $PollAnswerCopyWith(
          PollAnswer value, $Res Function(PollAnswer) then) =
      _$PollAnswerCopyWithImpl<$Res>;
  $Res call({String questionId, String value});
}

/// @nodoc
class _$PollAnswerCopyWithImpl<$Res> implements $PollAnswerCopyWith<$Res> {
  _$PollAnswerCopyWithImpl(this._value, this._then);

  final PollAnswer _value;
  // ignore: unused_field
  final $Res Function(PollAnswer) _then;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PollAnswerCopyWith<$Res> implements $PollAnswerCopyWith<$Res> {
  factory _$PollAnswerCopyWith(
          _PollAnswer value, $Res Function(_PollAnswer) then) =
      __$PollAnswerCopyWithImpl<$Res>;
  @override
  $Res call({String questionId, String value});
}

/// @nodoc
class __$PollAnswerCopyWithImpl<$Res> extends _$PollAnswerCopyWithImpl<$Res>
    implements _$PollAnswerCopyWith<$Res> {
  __$PollAnswerCopyWithImpl(
      _PollAnswer _value, $Res Function(_PollAnswer) _then)
      : super(_value, (v) => _then(v as _PollAnswer));

  @override
  _PollAnswer get _value => super._value as _PollAnswer;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? value = freezed,
  }) {
    return _then(_PollAnswer(
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PollAnswer implements _PollAnswer {
  const _$_PollAnswer({required this.questionId, required this.value});

  @override
  final String questionId;
  @override
  final String value;

  @override
  String toString() {
    return 'PollAnswer(questionId: $questionId, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PollAnswer &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, value);

  @JsonKey(ignore: true)
  @override
  _$PollAnswerCopyWith<_PollAnswer> get copyWith =>
      __$PollAnswerCopyWithImpl<_PollAnswer>(this, _$identity);
}

abstract class _PollAnswer implements PollAnswer {
  const factory _PollAnswer(
      {required String questionId, required String value}) = _$_PollAnswer;

  @override
  String get questionId;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$PollAnswerCopyWith<_PollAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

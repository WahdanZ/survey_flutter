// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poll_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollAnswerModel _$PollAnswerModelFromJson(Map<String, dynamic> json) {
  return _PollAnswerModel.fromJson(json);
}

/// @nodoc
class _$PollAnswerModelTearOff {
  const _$PollAnswerModelTearOff();

  _PollAnswerModel call({required String questionId, required String value}) {
    return _PollAnswerModel(
      questionId: questionId,
      value: value,
    );
  }

  PollAnswerModel fromJson(Map<String, Object?> json) {
    return PollAnswerModel.fromJson(json);
  }
}

/// @nodoc
const $PollAnswerModel = _$PollAnswerModelTearOff();

/// @nodoc
mixin _$PollAnswerModel {
  String get questionId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollAnswerModelCopyWith<PollAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollAnswerModelCopyWith<$Res> {
  factory $PollAnswerModelCopyWith(
          PollAnswerModel value, $Res Function(PollAnswerModel) then) =
      _$PollAnswerModelCopyWithImpl<$Res>;
  $Res call({String questionId, String value});
}

/// @nodoc
class _$PollAnswerModelCopyWithImpl<$Res>
    implements $PollAnswerModelCopyWith<$Res> {
  _$PollAnswerModelCopyWithImpl(this._value, this._then);

  final PollAnswerModel _value;
  // ignore: unused_field
  final $Res Function(PollAnswerModel) _then;

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
abstract class _$PollAnswerModelCopyWith<$Res>
    implements $PollAnswerModelCopyWith<$Res> {
  factory _$PollAnswerModelCopyWith(
          _PollAnswerModel value, $Res Function(_PollAnswerModel) then) =
      __$PollAnswerModelCopyWithImpl<$Res>;
  @override
  $Res call({String questionId, String value});
}

/// @nodoc
class __$PollAnswerModelCopyWithImpl<$Res>
    extends _$PollAnswerModelCopyWithImpl<$Res>
    implements _$PollAnswerModelCopyWith<$Res> {
  __$PollAnswerModelCopyWithImpl(
      _PollAnswerModel _value, $Res Function(_PollAnswerModel) _then)
      : super(_value, (v) => _then(v as _PollAnswerModel));

  @override
  _PollAnswerModel get _value => super._value as _PollAnswerModel;

  @override
  $Res call({
    Object? questionId = freezed,
    Object? value = freezed,
  }) {
    return _then(_PollAnswerModel(
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
@JsonSerializable()
class _$_PollAnswerModel implements _PollAnswerModel {
  const _$_PollAnswerModel({required this.questionId, required this.value});

  factory _$_PollAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PollAnswerModelFromJson(json);

  @override
  final String questionId;
  @override
  final String value;

  @override
  String toString() {
    return 'PollAnswerModel(questionId: $questionId, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PollAnswerModel &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, value);

  @JsonKey(ignore: true)
  @override
  _$PollAnswerModelCopyWith<_PollAnswerModel> get copyWith =>
      __$PollAnswerModelCopyWithImpl<_PollAnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollAnswerModelToJson(this);
  }
}

abstract class _PollAnswerModel implements PollAnswerModel {
  const factory _PollAnswerModel(
      {required String questionId, required String value}) = _$_PollAnswerModel;

  factory _PollAnswerModel.fromJson(Map<String, dynamic> json) =
      _$_PollAnswerModel.fromJson;

  @override
  String get questionId;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$PollAnswerModelCopyWith<_PollAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poll_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PollModel _$PollModelFromJson(Map<String, dynamic> json) {
  return _PollModel.fromJson(json);
}

/// @nodoc
class _$PollModelTearOff {
  const _$PollModelTearOff();

  _PollModel call(
      {String? id,
      String? title,
      String? description,
      String? startedAt,
      String? endedAt,
      String? imageUrl,
      String? termsAndConditionsUrl,
      String? finishText,
      List<QuestionModel>? questions}) {
    return _PollModel(
      id: id,
      title: title,
      description: description,
      startedAt: startedAt,
      endedAt: endedAt,
      imageUrl: imageUrl,
      termsAndConditionsUrl: termsAndConditionsUrl,
      finishText: finishText,
      questions: questions,
    );
  }

  PollModel fromJson(Map<String, Object?> json) {
    return PollModel.fromJson(json);
  }
}

/// @nodoc
const $PollModel = _$PollModelTearOff();

/// @nodoc
mixin _$PollModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get startedAt => throw _privateConstructorUsedError;
  String? get endedAt => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get termsAndConditionsUrl => throw _privateConstructorUsedError;
  String? get finishText => throw _privateConstructorUsedError;
  List<QuestionModel>? get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollModelCopyWith<PollModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollModelCopyWith<$Res> {
  factory $PollModelCopyWith(PollModel value, $Res Function(PollModel) then) =
      _$PollModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? startedAt,
      String? endedAt,
      String? imageUrl,
      String? termsAndConditionsUrl,
      String? finishText,
      List<QuestionModel>? questions});
}

/// @nodoc
class _$PollModelCopyWithImpl<$Res> implements $PollModelCopyWith<$Res> {
  _$PollModelCopyWithImpl(this._value, this._then);

  final PollModel _value;
  // ignore: unused_field
  final $Res Function(PollModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? imageUrl = freezed,
    Object? termsAndConditionsUrl = freezed,
    Object? finishText = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditionsUrl: termsAndConditionsUrl == freezed
          ? _value.termsAndConditionsUrl
          : termsAndConditionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      finishText: finishText == freezed
          ? _value.finishText
          : finishText // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
    ));
  }
}

/// @nodoc
abstract class _$PollModelCopyWith<$Res> implements $PollModelCopyWith<$Res> {
  factory _$PollModelCopyWith(
          _PollModel value, $Res Function(_PollModel) then) =
      __$PollModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? startedAt,
      String? endedAt,
      String? imageUrl,
      String? termsAndConditionsUrl,
      String? finishText,
      List<QuestionModel>? questions});
}

/// @nodoc
class __$PollModelCopyWithImpl<$Res> extends _$PollModelCopyWithImpl<$Res>
    implements _$PollModelCopyWith<$Res> {
  __$PollModelCopyWithImpl(_PollModel _value, $Res Function(_PollModel) _then)
      : super(_value, (v) => _then(v as _PollModel));

  @override
  _PollModel get _value => super._value as _PollModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? imageUrl = freezed,
    Object? termsAndConditionsUrl = freezed,
    Object? finishText = freezed,
    Object? questions = freezed,
  }) {
    return _then(_PollModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      termsAndConditionsUrl: termsAndConditionsUrl == freezed
          ? _value.termsAndConditionsUrl
          : termsAndConditionsUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      finishText: finishText == freezed
          ? _value.finishText
          : finishText // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PollModel implements _PollModel {
  const _$_PollModel(
      {this.id,
      this.title,
      this.description,
      this.startedAt,
      this.endedAt,
      this.imageUrl,
      this.termsAndConditionsUrl,
      this.finishText,
      this.questions});

  factory _$_PollModel.fromJson(Map<String, dynamic> json) =>
      _$$_PollModelFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? startedAt;
  @override
  final String? endedAt;
  @override
  final String? imageUrl;
  @override
  final String? termsAndConditionsUrl;
  @override
  final String? finishText;
  @override
  final List<QuestionModel>? questions;

  @override
  String toString() {
    return 'PollModel(id: $id, title: $title, description: $description, startedAt: $startedAt, endedAt: $endedAt, imageUrl: $imageUrl, termsAndConditionsUrl: $termsAndConditionsUrl, finishText: $finishText, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PollModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.termsAndConditionsUrl, termsAndConditionsUrl) ||
                other.termsAndConditionsUrl == termsAndConditionsUrl) &&
            (identical(other.finishText, finishText) ||
                other.finishText == finishText) &&
            const DeepCollectionEquality().equals(other.questions, questions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      startedAt,
      endedAt,
      imageUrl,
      termsAndConditionsUrl,
      finishText,
      const DeepCollectionEquality().hash(questions));

  @JsonKey(ignore: true)
  @override
  _$PollModelCopyWith<_PollModel> get copyWith =>
      __$PollModelCopyWithImpl<_PollModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollModelToJson(this);
  }
}

abstract class _PollModel implements PollModel {
  const factory _PollModel(
      {String? id,
      String? title,
      String? description,
      String? startedAt,
      String? endedAt,
      String? imageUrl,
      String? termsAndConditionsUrl,
      String? finishText,
      List<QuestionModel>? questions}) = _$_PollModel;

  factory _PollModel.fromJson(Map<String, dynamic> json) =
      _$_PollModel.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get startedAt;
  @override
  String? get endedAt;
  @override
  String? get imageUrl;
  @override
  String? get termsAndConditionsUrl;
  @override
  String? get finishText;
  @override
  List<QuestionModel>? get questions;
  @override
  @JsonKey(ignore: true)
  _$PollModelCopyWith<_PollModel> get copyWith =>
      throw _privateConstructorUsedError;
}

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
class _$QuestionModelTearOff {
  const _$QuestionModelTearOff();

  _QuestionModel call(
      {String? id,
      String? text,
      String? type,
      bool? required,
      List<AnswerModel>? answers}) {
    return _QuestionModel(
      id: id,
      text: text,
      type: type,
      required: required,
      answers: answers,
    );
  }

  QuestionModel fromJson(Map<String, Object?> json) {
    return QuestionModel.fromJson(json);
  }
}

/// @nodoc
const $QuestionModel = _$QuestionModelTearOff();

/// @nodoc
mixin _$QuestionModel {
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get required => throw _privateConstructorUsedError;
  List<AnswerModel>? get answers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? text,
      String? type,
      bool? required,
      List<AnswerModel>? answers});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  final QuestionModel _value;
  // ignore: unused_field
  final $Res Function(QuestionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? required = freezed,
    Object? answers = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>?,
    ));
  }
}

/// @nodoc
abstract class _$QuestionModelCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$QuestionModelCopyWith(
          _QuestionModel value, $Res Function(_QuestionModel) then) =
      __$QuestionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? text,
      String? type,
      bool? required,
      List<AnswerModel>? answers});
}

/// @nodoc
class __$QuestionModelCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res>
    implements _$QuestionModelCopyWith<$Res> {
  __$QuestionModelCopyWithImpl(
      _QuestionModel _value, $Res Function(_QuestionModel) _then)
      : super(_value, (v) => _then(v as _QuestionModel));

  @override
  _QuestionModel get _value => super._value as _QuestionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? required = freezed,
    Object? answers = freezed,
  }) {
    return _then(_QuestionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionModel implements _QuestionModel {
  const _$_QuestionModel(
      {this.id, this.text, this.type, this.required, this.answers});

  factory _$_QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionModelFromJson(json);

  @override
  final String? id;
  @override
  final String? text;
  @override
  final String? type;
  @override
  final bool? required;
  @override
  final List<AnswerModel>? answers;

  @override
  String toString() {
    return 'QuestionModel(id: $id, text: $text, type: $type, required: $required, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other.answers, answers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text, type, required,
      const DeepCollectionEquality().hash(answers));

  @JsonKey(ignore: true)
  @override
  _$QuestionModelCopyWith<_QuestionModel> get copyWith =>
      __$QuestionModelCopyWithImpl<_QuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionModelToJson(this);
  }
}

abstract class _QuestionModel implements QuestionModel {
  const factory _QuestionModel(
      {String? id,
      String? text,
      String? type,
      bool? required,
      List<AnswerModel>? answers}) = _$_QuestionModel;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionModel.fromJson;

  @override
  String? get id;
  @override
  String? get text;
  @override
  String? get type;
  @override
  bool? get required;
  @override
  List<AnswerModel>? get answers;
  @override
  @JsonKey(ignore: true)
  _$QuestionModelCopyWith<_QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) {
  return _AnswerModel.fromJson(json);
}

/// @nodoc
class _$AnswerModelTearOff {
  const _$AnswerModelTearOff();

  _AnswerModel call({String? text, int? value}) {
    return _AnswerModel(
      text: text,
      value: value,
    );
  }

  AnswerModel fromJson(Map<String, Object?> json) {
    return AnswerModel.fromJson(json);
  }
}

/// @nodoc
const $AnswerModel = _$AnswerModelTearOff();

/// @nodoc
mixin _$AnswerModel {
  String? get text => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerModelCopyWith<AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerModelCopyWith<$Res> {
  factory $AnswerModelCopyWith(
          AnswerModel value, $Res Function(AnswerModel) then) =
      _$AnswerModelCopyWithImpl<$Res>;
  $Res call({String? text, int? value});
}

/// @nodoc
class _$AnswerModelCopyWithImpl<$Res> implements $AnswerModelCopyWith<$Res> {
  _$AnswerModelCopyWithImpl(this._value, this._then);

  final AnswerModel _value;
  // ignore: unused_field
  final $Res Function(AnswerModel) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$AnswerModelCopyWith<$Res>
    implements $AnswerModelCopyWith<$Res> {
  factory _$AnswerModelCopyWith(
          _AnswerModel value, $Res Function(_AnswerModel) then) =
      __$AnswerModelCopyWithImpl<$Res>;
  @override
  $Res call({String? text, int? value});
}

/// @nodoc
class __$AnswerModelCopyWithImpl<$Res> extends _$AnswerModelCopyWithImpl<$Res>
    implements _$AnswerModelCopyWith<$Res> {
  __$AnswerModelCopyWithImpl(
      _AnswerModel _value, $Res Function(_AnswerModel) _then)
      : super(_value, (v) => _then(v as _AnswerModel));

  @override
  _AnswerModel get _value => super._value as _AnswerModel;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_AnswerModel(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerModel implements _AnswerModel {
  const _$_AnswerModel({this.text, this.value});

  factory _$_AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerModelFromJson(json);

  @override
  final String? text;
  @override
  final int? value;

  @override
  String toString() {
    return 'AnswerModel(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnswerModel &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  @JsonKey(ignore: true)
  @override
  _$AnswerModelCopyWith<_AnswerModel> get copyWith =>
      __$AnswerModelCopyWithImpl<_AnswerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerModelToJson(this);
  }
}

abstract class _AnswerModel implements AnswerModel {
  const factory _AnswerModel({String? text, int? value}) = _$_AnswerModel;

  factory _AnswerModel.fromJson(Map<String, dynamic> json) =
      _$_AnswerModel.fromJson;

  @override
  String? get text;
  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$AnswerModelCopyWith<_AnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

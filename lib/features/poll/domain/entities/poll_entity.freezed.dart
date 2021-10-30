// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'poll_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PollTearOff {
  const _$PollTearOff();

  _Poll call(
      {required String id,
      required String title,
      required String description,
      required DateTime startedAt,
      required DateTime endedAt,
      required String imageUrl,
      required String termsAndConditionsUrl,
      required String finishText,
      required List<Question> questions}) {
    return _Poll(
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
}

/// @nodoc
const $Poll = _$PollTearOff();

/// @nodoc
mixin _$Poll {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get startedAt => throw _privateConstructorUsedError;
  DateTime get endedAt => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get termsAndConditionsUrl => throw _privateConstructorUsedError;
  String get finishText => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startedAt,
      DateTime endedAt,
      String imageUrl,
      String termsAndConditionsUrl,
      String finishText,
      List<Question> questions});
}

/// @nodoc
class _$PollCopyWithImpl<$Res> implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._value, this._then);

  final Poll _value;
  // ignore: unused_field
  final $Res Function(Poll) _then;

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
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      termsAndConditionsUrl: termsAndConditionsUrl == freezed
          ? _value.termsAndConditionsUrl
          : termsAndConditionsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      finishText: finishText == freezed
          ? _value.finishText
          : finishText // ignore: cast_nullable_to_non_nullable
              as String,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
abstract class _$PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$PollCopyWith(_Poll value, $Res Function(_Poll) then) =
      __$PollCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      DateTime startedAt,
      DateTime endedAt,
      String imageUrl,
      String termsAndConditionsUrl,
      String finishText,
      List<Question> questions});
}

/// @nodoc
class __$PollCopyWithImpl<$Res> extends _$PollCopyWithImpl<$Res>
    implements _$PollCopyWith<$Res> {
  __$PollCopyWithImpl(_Poll _value, $Res Function(_Poll) _then)
      : super(_value, (v) => _then(v as _Poll));

  @override
  _Poll get _value => super._value as _Poll;

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
    return _then(_Poll(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      termsAndConditionsUrl: termsAndConditionsUrl == freezed
          ? _value.termsAndConditionsUrl
          : termsAndConditionsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      finishText: finishText == freezed
          ? _value.finishText
          : finishText // ignore: cast_nullable_to_non_nullable
              as String,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_Poll implements _Poll {
  const _$_Poll(
      {required this.id,
      required this.title,
      required this.description,
      required this.startedAt,
      required this.endedAt,
      required this.imageUrl,
      required this.termsAndConditionsUrl,
      required this.finishText,
      required this.questions});

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime startedAt;
  @override
  final DateTime endedAt;
  @override
  final String imageUrl;
  @override
  final String termsAndConditionsUrl;
  @override
  final String finishText;
  @override
  final List<Question> questions;

  @override
  String toString() {
    return 'Poll(id: $id, title: $title, description: $description, startedAt: $startedAt, endedAt: $endedAt, imageUrl: $imageUrl, termsAndConditionsUrl: $termsAndConditionsUrl, finishText: $finishText, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Poll &&
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
  _$PollCopyWith<_Poll> get copyWith =>
      __$PollCopyWithImpl<_Poll>(this, _$identity);
}

abstract class _Poll implements Poll {
  const factory _Poll(
      {required String id,
      required String title,
      required String description,
      required DateTime startedAt,
      required DateTime endedAt,
      required String imageUrl,
      required String termsAndConditionsUrl,
      required String finishText,
      required List<Question> questions}) = _$_Poll;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get startedAt;
  @override
  DateTime get endedAt;
  @override
  String get imageUrl;
  @override
  String get termsAndConditionsUrl;
  @override
  String get finishText;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$PollCopyWith<_Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestionTearOff {
  const _$QuestionTearOff();

  _Question call(
      {required String id,
      required String text,
      required QuestionType type,
      required bool required,
      List<Answer>? answers}) {
    return _Question(
      id: id,
      text: text,
      type: type,
      required: required,
      answers: answers,
    );
  }
}

/// @nodoc
const $Question = _$QuestionTearOff();

/// @nodoc
mixin _$Question {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  QuestionType get type => throw _privateConstructorUsedError;
  bool get required => throw _privateConstructorUsedError;
  List<Answer>? get answers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String text,
      QuestionType type,
      bool required,
      List<Answer>? answers});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

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
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc
abstract class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) then) =
      __$QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String text,
      QuestionType type,
      bool required,
      List<Answer>? answers});
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(_Question _value, $Res Function(_Question) _then)
      : super(_value, (v) => _then(v as _Question));

  @override
  _Question get _value => super._value as _Question;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? required = freezed,
    Object? answers = freezed,
  }) {
    return _then(_Question(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      required: required == freezed
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>?,
    ));
  }
}

/// @nodoc

class _$_Question implements _Question {
  const _$_Question(
      {required this.id,
      required this.text,
      required this.type,
      required this.required,
      this.answers});

  @override
  final String id;
  @override
  final String text;
  @override
  final QuestionType type;
  @override
  final bool required;
  @override
  final List<Answer>? answers;

  @override
  String toString() {
    return 'Question(id: $id, text: $text, type: $type, required: $required, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Question &&
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
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);
}

abstract class _Question implements Question {
  const factory _Question(
      {required String id,
      required String text,
      required QuestionType type,
      required bool required,
      List<Answer>? answers}) = _$_Question;

  @override
  String get id;
  @override
  String get text;
  @override
  QuestionType get type;
  @override
  bool get required;
  @override
  List<Answer>? get answers;
  @override
  @JsonKey(ignore: true)
  _$QuestionCopyWith<_Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AnswerTearOff {
  const _$AnswerTearOff();

  _Answer call({required String text, required int value}) {
    return _Answer(
      text: text,
      value: value,
    );
  }
}

/// @nodoc
const $Answer = _$AnswerTearOff();

/// @nodoc
mixin _$Answer {
  String get text => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  $Res call({String text, int value});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  final Answer _value;
  // ignore: unused_field
  final $Res Function(Answer) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) then) =
      __$AnswerCopyWithImpl<$Res>;
  @override
  $Res call({String text, int value});
}

/// @nodoc
class __$AnswerCopyWithImpl<$Res> extends _$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(_Answer _value, $Res Function(_Answer) _then)
      : super(_value, (v) => _then(v as _Answer));

  @override
  _Answer get _value => super._value as _Answer;

  @override
  $Res call({
    Object? text = freezed,
    Object? value = freezed,
  }) {
    return _then(_Answer(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Answer implements _Answer {
  const _$_Answer({required this.text, required this.value});

  @override
  final String text;
  @override
  final int value;

  @override
  String toString() {
    return 'Answer(text: $text, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Answer &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, value);

  @JsonKey(ignore: true)
  @override
  _$AnswerCopyWith<_Answer> get copyWith =>
      __$AnswerCopyWithImpl<_Answer>(this, _$identity);
}

abstract class _Answer implements Answer {
  const factory _Answer({required String text, required int value}) = _$_Answer;

  @override
  String get text;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$AnswerCopyWith<_Answer> get copyWith => throw _privateConstructorUsedError;
}

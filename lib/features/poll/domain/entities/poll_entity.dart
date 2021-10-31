import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_entity.freezed.dart';
part 'poll_entity.g.dart';

@freezed
class Poll with _$Poll {
  const factory Poll({
    required String id,
    required String title,
    required String description,
    required String startedAt,
    required String endedAt,
    required String imageUrl,
    required String termsAndConditionsUrl,
    required String finishText,
    required List<Question> questions,
  }) = _Poll;
  factory Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);
}

@freezed
class Question with _$Question {
  const factory Question({
    required String id,
    required String text,
    required QuestionType type,
    required bool required,
    List<Answer>? answers,
  }) = _Question;
  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    required String text,
    required int value,
  }) = _Answer;
  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}

enum QuestionType { multiple, single, rating, text }

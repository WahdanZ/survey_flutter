import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_entity.freezed.dart';

@freezed
class Poll with _$Poll {
  const factory Poll({
    required String id,
    required String title,
    required String description,
    required DateTime startedAt,
    required DateTime endedAt,
    required String imageUrl,
    required String termsAndConditionsUrl,
    required String finishText,
    required List<Question> questions,
  }) = _Poll;
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
}

@freezed
class Answer with _$Answer {
  const factory Answer({
    required String text,
    required int value,
  }) = _Answer;
}

enum QuestionType { multiple, single, rating, text }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_model.freezed.dart';
part 'poll_model.g.dart';

@freezed
class PollModel with _$PollModel {
  const factory PollModel({
    String? id,
    String? title,
    String? description,
    String? startedAt,
    String? endedAt,
    String? imageUrl,
    String? termsAndConditionsUrl,
    String? finishText,
    List<QuestionModel>? questions,
  }) = _PollModel;
  factory PollModel.fromJson(Map<String, dynamic> json) =>
      _$PollModelFromJson(json);
}

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    String? id,
    String? text,
    String? type,
    bool? required,
    List<AnswerModel>? answers,
  }) = _QuestionModel;
  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}

@freezed
class AnswerModel with _$AnswerModel {
  const factory AnswerModel({
    String? text,
    int? value,
  }) = _AnswerModel;
  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}

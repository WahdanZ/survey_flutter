import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_answer_model.freezed.dart';
part 'poll_answer_model.g.dart';

@freezed
class PollAnswerModel with _$PollAnswerModel {
  const factory PollAnswerModel({
    required String questionId,
    required String value,
  }) = _PollAnswerModel;

  factory PollAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$PollAnswerModelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'poll_answer.freezed.dart';

@freezed
class PollAnswer with _$PollAnswer {
  const factory PollAnswer({
    required String questionId,
    required String value,
  }) = _PollAnswer;
}

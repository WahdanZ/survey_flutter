import 'package:poll_flutter/base/mapper/mapper.dart';
import 'package:poll_flutter/features/poll/data/models/poll_answer_model.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

class PollAnswerMapper extends Mapper<PollAnswerModel, PollAnswer> {
  @override
  PollAnswerModel mapFromEntity(PollAnswer type) {
    return PollAnswerModel(
      questionId: type.questionId,
      value: type.value,
    );
  }

  @override
  PollAnswer mapFromModel(PollAnswerModel type) {
    return PollAnswer(
      questionId: type.questionId,
      value: type.value,
    );
  }
}

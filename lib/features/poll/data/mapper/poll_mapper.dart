import 'package:poll_flutter/base/mapper/mapper.dart';
import 'package:poll_flutter/features/poll/data/mapper/question_mapper.dart';
import 'package:poll_flutter/features/poll/data/models/poll_model.dart';
import 'package:poll_flutter/features/poll/index.dart';

class PollMapper extends Mapper<PollModel, Poll> {
  final QuestionMapper _questionMapper;

  PollMapper(this._questionMapper);
  @override
  Poll mapFromModel(PollModel type) {
    return Poll(
        id: type.id ?? "",
        title: type.title ?? "",
        description: type.description ?? "",
        startedAt: type.startedAt ?? "",
        endedAt: type.endedAt ?? "",
        imageUrl: type.imageUrl ?? "",
        termsAndConditionsUrl: type.imageUrl ?? "",
        finishText: type.finishText ?? "",
        questions:
            type.questions?.map(_questionMapper.mapFromModel).toList() ?? []);
  }

  @override
  PollModel mapFromEntity(Poll type) {
    return PollModel(
        id: type.id,
        title: type.title,
        description: type.description,
        startedAt: type.startedAt,
        endedAt: type.endedAt,
        imageUrl: type.imageUrl,
        termsAndConditionsUrl: type.imageUrl,
        finishText: type.finishText,
        questions: type.questions.map(_questionMapper.mapFromEntity).toList());
  }
}

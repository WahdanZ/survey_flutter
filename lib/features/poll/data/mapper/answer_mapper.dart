import 'package:poll_flutter/base/mapper/mapper.dart';
import 'package:poll_flutter/features/poll/data/models/poll.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

class AnswerMapper extends Mapper<AnswersModel, Answer> {
  @override
  AnswersModel mapFromEntity(Answer type) {
    return AnswersModel(
      text: type.text,
      value: type.value,
    );
  }

  @override
  Answer mapFromModel(AnswersModel type) {
    return Answer(
      text: type.text ?? "",
      value: type.value ?? 0,
    );
  }
}

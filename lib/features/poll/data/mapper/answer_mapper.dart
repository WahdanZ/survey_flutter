import 'package:poll_flutter/base/mapper/mapper.dart';
import 'package:poll_flutter/features/poll/data/models/poll_model.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

class AnswerMapper extends Mapper<AnswerModel, Answer> {
  @override
  AnswerModel mapFromEntity(Answer type) {
    return AnswerModel(
      text: type.text,
      value: type.value,
    );
  }

  @override
  Answer mapFromModel(AnswerModel type) {
    return Answer(
      text: type.text ?? "",
      value: type.value ?? 0,
    );
  }
}

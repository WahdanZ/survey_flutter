import 'package:poll_flutter/base/mapper/mapper.dart';
import 'package:poll_flutter/features/poll/data/mapper/answer_mapper.dart';
import 'package:poll_flutter/features/poll/data/mapper/question_type_map.dart';
import 'package:poll_flutter/features/poll/data/models/poll.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

class QuestionMapper extends Mapper<QuestionsModel, Question> {
  final AnswerMapper _answerMapper;
  final QuestionTypeMap _questionTypeMap;
  QuestionMapper(this._answerMapper, this._questionTypeMap);
  @override
  QuestionsModel mapFromEntity(Question type) {
    return QuestionsModel(
        type: _questionTypeMap.mapFromEntity(type.type),
        id: type.id,
        text: type.text,
        required: type.required,
        answers: type.answers?.map(_answerMapper.mapFromEntity).toList());
  }

  @override
  Question mapFromModel(QuestionsModel type) {
    return Question(
        type: _questionTypeMap.mapFromModel(type.type ?? ""),
        id: type.id ?? "",
        text: type.text ?? "",
        required: type.required ?? false,
        answers: type.answers?.map(_answerMapper.mapFromModel).toList());
  }
}

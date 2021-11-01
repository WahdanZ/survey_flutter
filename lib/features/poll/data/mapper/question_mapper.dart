import 'package:poll_flutter/base/mapper/mapper.dart';
import 'package:poll_flutter/features/poll/data/mapper/answer_mapper.dart';
import 'package:poll_flutter/features/poll/data/mapper/question_type_map.dart';
import 'package:poll_flutter/features/poll/data/models/poll_model.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

class QuestionMapper extends Mapper<QuestionModel, Question> {
  final AnswerMapper _answerMapper;
  final QuestionTypeMap _questionTypeMap;
  QuestionMapper(this._answerMapper, this._questionTypeMap);
  @override
  QuestionModel mapFromEntity(Question type) {
    return QuestionModel(
        type: _questionTypeMap.mapFromEntity(type.type),
        id: type.id,
        text: type.text,
        required: type.required,
        answers: type.answers?.map(_answerMapper.mapFromEntity).toList());
  }

  @override
  Question mapFromModel(QuestionModel type) {
    return Question(
        type: _questionTypeMap.mapFromModel(type.type ?? ""),
        id: type.id ?? "",
        text: type.text ?? "",
        required: type.required ?? false,
        answers: type.answers?.map(_answerMapper.mapFromModel).toList());
  }
}

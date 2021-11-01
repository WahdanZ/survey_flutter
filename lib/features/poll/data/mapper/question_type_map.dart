import 'package:poll_flutter/base/mapper/mapper.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

class QuestionTypeMap extends Mapper<String, QuestionType> {
  @override
  String mapFromEntity(QuestionType type) {
    switch (type) {
      case QuestionType.multiple:
        return "multiple";
      case QuestionType.single:
        return "single";
      case QuestionType.rating:
        return "rating";
      case QuestionType.text:
        return "rating";
    }
  }

  @override
  QuestionType mapFromModel(String type) {
    switch (type) {
      case "multiple":
        return QuestionType.multiple;
      case "single":
        return QuestionType.single;
      case "rating":
        return QuestionType.rating;
      case "rating":
        return QuestionType.text;
    }
    return QuestionType.text;
  }
}

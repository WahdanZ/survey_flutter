// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Poll _$$_PollFromJson(Map<String, dynamic> json) => _$_Poll(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      startedAt: json['startedAt'] as String,
      endedAt: json['endedAt'] as String,
      imageUrl: json['imageUrl'] as String,
      termsAndConditionsUrl: json['termsAndConditionsUrl'] as String,
      finishText: json['finishText'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PollToJson(_$_Poll instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'startedAt': instance.startedAt,
      'endedAt': instance.endedAt,
      'imageUrl': instance.imageUrl,
      'termsAndConditionsUrl': instance.termsAndConditionsUrl,
      'finishText': instance.finishText,
      'questions': instance.questions,
    };

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String,
      text: json['text'] as String,
      type: $enumDecode(_$QuestionTypeEnumMap, json['type']),
      required: json['required'] as bool,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': _$QuestionTypeEnumMap[instance.type],
      'required': instance.required,
      'answers': instance.answers,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multiple: 'multiple',
  QuestionType.single: 'single',
  QuestionType.rating: 'rating',
  QuestionType.text: 'text',
};

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      text: json['text'] as String,
      value: json['value'] as int,
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

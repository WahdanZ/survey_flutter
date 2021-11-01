// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PollModel _$$_PollModelFromJson(Map<String, dynamic> json) => _$_PollModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      startedAt: json['startedAt'] as String?,
      endedAt: json['endedAt'] as String?,
      imageUrl: json['imageUrl'] as String?,
      termsAndConditionsUrl: json['termsAndConditionsUrl'] as String?,
      finishText: json['finishText'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PollModelToJson(_$_PollModel instance) =>
    <String, dynamic>{
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

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      id: json['id'] as String?,
      text: json['text'] as String?,
      type: json['type'] as String?,
      required: json['required'] as bool?,
      answers: (json['answers'] as List<dynamic>?)
          ?.map((e) => AnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'required': instance.required,
      'answers': instance.answers,
    };

_$_AnswerModel _$$_AnswerModelFromJson(Map<String, dynamic> json) =>
    _$_AnswerModel(
      text: json['text'] as String?,
      value: json['value'] as int?,
    );

Map<String, dynamic> _$$_AnswerModelToJson(_$_AnswerModel instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };

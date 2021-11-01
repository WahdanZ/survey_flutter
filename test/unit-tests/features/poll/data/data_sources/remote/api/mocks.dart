import 'package:poll_flutter/features/poll/data/models/poll_model.dart';
import 'package:poll_flutter/features/poll/index.dart';

const mockPollResponse200 = r'''
{
  "id": "vAJax5hdbF",
  "title": "Effects of the Healy on human emotions",
  "description": "Congratulations, you have been selected to participate in this study. Please complete the survey and follow the instructions we have send you by email",
  "startedAt": "01.01.2021",
  "endedAt": "31.12.2021",
  "imageUrl": "https://firebasestorage.googleapis.com/v0/b/healy-identity.appspot.com/o/polls%2FvAJax5hdbF.jpg?alt=media&token=4217d7e6-e855-47dc-a55e-8c692668a6ba",
  "termsAndConditionsUrl": "https://us.healy.shop/terms-of-use/",
  "finishText": "Thank you very much for your participation.\nnWe will contact you if you have any questions or to inform you about the next steps.",
  "questions": [
    {
      "id": "n0aq3sqRU7",
      "text": "In the past week, which emotion did you feel most often?",
      "type": "multiple",
      "required": true,
      "answers": [
        {
          "text": "Happy",
          "value": 0
        }
      ]
    }
  ]
}
''';

final mockModel = PollModel(
    id: "vAJax5hdbF",
    title: "Effects of the Healy on human emotions",
    description:
        "Congratulations, you have been selected to participate in this study. Please complete the survey and follow the instructions we have send you by email",
    startedAt: "01.01.2021",
    endedAt: "31.12.2021",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/healy-identity.appspot.com/o/polls%2FvAJax5hdbF.jpg?alt=media&token=4217d7e6-e855-47dc-a55e-8c692668a6ba",
    termsAndConditionsUrl: "https://us.healy.shop/terms-of-use/",
    finishText:
        "Thank you very much for your participation.\nnWe will contact you if you have any questions or to inform you about the next steps.",
    questions: [
      QuestionModel(
          id: "n0aq3sqRU7",
          text: "In the past week, which emotion did you feel most often?",
          type: "multiple",
          required: true,
          answers: [AnswerModel(text: "Happy", value: 0)])
    ]);
final mockEntity = Poll(
    id: "vAJax5hdbF",
    title: "Effects of the Healy on human emotions",
    description:
        "Congratulations, you have been selected to participate in this study. Please complete the survey and follow the instructions we have send you by email",
    startedAt: "01.01.2021",
    endedAt: "31.12.2021",
    imageUrl:
        "https://firebasestorage.googleapis.com/v0/b/healy-identity.appspot.com/o/polls%2FvAJax5hdbF.jpg?alt=media&token=4217d7e6-e855-47dc-a55e-8c692668a6ba",
    termsAndConditionsUrl: "https://us.healy.shop/terms-of-use/",
    finishText:
        "Thank you very much for your participation.\nnWe will contact you if you have any questions or to inform you about the next steps.",
    questions: [
      Question(
          id: "n0aq3sqRU7",
          text: "In the past week, which emotion did you feel most often?",
          type: QuestionType.multiple,
          required: true,
          answers: [Answer(text: "Happy", value: 0)])
    ]);

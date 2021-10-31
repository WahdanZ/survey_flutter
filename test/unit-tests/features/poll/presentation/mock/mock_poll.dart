import 'package:faker/faker.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

final mockPoll1 = Poll(
  id: faker.guid.guid(),
  title: faker.sport.name(),
  finishText: faker.randomGenerator.string(100),
  startedAt: faker.date.dateTime().toString(),
  endedAt: faker.date.dateTime().toString(),
  description: faker.randomGenerator.string(1000),
  imageUrl: faker.internet.uri("https"),
  termsAndConditionsUrl: faker.internet.uri("https"),
  questions: [
    Question(
        id: faker.guid.guid(),
        text: "What's you favourite sport ?",
        type:
            QuestionType.values[random.integer(QuestionType.values.length - 1)],
        required: true,
        answers: List.generate(
            4,
            (index) =>
                Answer(text: faker.sport.name(), value: random.integer(100))))
  ],
);
final mockPollWithMultipleQuestionType = Poll(
  id: faker.guid.guid(),
  title: faker.sport.name(),
  finishText: faker.randomGenerator.string(100),
  startedAt: faker.date.dateTime().toString(),
  endedAt: faker.date.dateTime().toString(),
  description: faker.randomGenerator.string(1000),
  imageUrl: faker.internet.uri("https"),
  termsAndConditionsUrl: faker.internet.uri("https"),
  questions: [
    Question(
        id: faker.guid.guid(),
        text: "What's you favourite sport ?",
        type: QuestionType.multiple,
        required: true,
        answers: List.generate(
            4,
            (index) =>
                Answer(text: faker.sport.name(), value: random.integer(100))))
  ],
);
final mockPollWithSingleQuestionType = Poll(
  id: faker.guid.guid(),
  title: faker.sport.name(),
  finishText: faker.randomGenerator.string(100),
  startedAt: faker.date.dateTime().toString(),
  endedAt: faker.date.dateTime().toString(),
  description: faker.randomGenerator.string(1000),
  imageUrl: faker.internet.uri("https"),
  termsAndConditionsUrl: faker.internet.uri("https"),
  questions: [
    Question(
        id: faker.guid.guid(),
        text: "What's you favourite sport ?",
        type: QuestionType.single,
        required: true,
        answers: List.generate(
            4,
            (index) =>
                Answer(text: faker.sport.name(), value: random.integer(100))))
  ],
);
final mockPollWithTextQuestionType = Poll(
  id: faker.guid.guid(),
  title: faker.sport.name(),
  finishText: faker.randomGenerator.string(100),
  startedAt: faker.date.dateTime().toString(),
  endedAt: faker.date.dateTime().toString(),
  description: faker.randomGenerator.string(1000),
  imageUrl: faker.internet.uri("https"),
  termsAndConditionsUrl: faker.internet.uri("https"),
  questions: [
    Question(
        id: faker.guid.guid(),
        text: "What's you favourite sport ?",
        type: QuestionType.text,
        required: true,
        answers: List.generate(
            4,
            (index) =>
                Answer(text: faker.sport.name(), value: random.integer(100))))
  ],
);

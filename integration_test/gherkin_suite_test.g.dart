// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gherkin_suite_test.dart';

// **************************************************************************
// GherkinSuiteTestGenerator
// **************************************************************************

class _CustomGherkinIntegrationTestRunner extends GherkinIntegrationTestRunner {
  _CustomGherkinIntegrationTestRunner(
    TestConfiguration configuration,
    Future<void> Function(World) appMainFunction,
  ) : super(configuration, appMainFunction);

  @override
  void onRun() {
    testFeature0();
  }

  void testFeature0() {
    runFeature(
      'Understanding of customers\' habits:',
      <String>[],
      () {
        runScenario(
          'The product owner requires to have the questions, answers as JSON file',
          <String>[],
          (TestDependencies dependencies) async {
            await runStep(
              'Given The Backend Respond with data',
              <String>[
                """ {
   "id": "vAJax5hdbF",
  "title": "Effects of the Healy on human emotions",
  "description": "Congratulations, you have been selected to participate in this study. Please complete the survey and follow the instructions we have send you by email",
  "startedAt": "01.01.2021",
  "endedAt": "31.12.2021",
  "imageUrl": "https://firebasestorage.googleapis.com/v0/b/healy-identity.appspot.com/o/polls%2FvAJax5hdbF.jpg?alt=media&token=4217d7e6-e855-47dc-a55e-8c692668a6ba",
  "termsAndConditionsUrl": "https://us.healy.shop/terms-of-use/",
  "finishText": "Thank you very much for your participation.",
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
    },
    {
      "text": "Excited",
      "value": 1
    },
    {
      "text": "Restless",
      "value": 2
    },
    {
      "text": "Sad",
      "value": 3
    },
    {
      "text": "Worried",
      "value": 4
    },
    {
      "text": "Angry",
      "value": 5
    }
  ]
},
    {
      "id": "RZYRrFYzCc",
      "text": "Does this emotion affect your temper during the rest of the day?",
      "type": "rating",
      "required": true,
      "answers": [
         {
            "text": "Strongly disagree",
            "value": 0
          },
          {
            "text": "Disagree",
            "value": 1
          },
          {
            "text": "Neurtral",
            "value": 2
          },
          {
            "text": "Aggreed",
            "value": 3
          },
          {
            "text": "Strongly Agree",
            "value": 4
          }
      ]
    },
  {
  "id": "4J456QofoL",
  "text": "What event or events caused you to feel that emotion most frequently?",
  "type": "text",
  "required": true
   }
  ]
}"""
              ],
              null,
              dependencies,
            );

            await runStep(
              'When I open the app',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find the text "Effects of the Healy on human emotions"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And  I expect to find the text "Congratulations, you have been selected to participate in this study. Please complete the survey and follow the instructions we have send you by email"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And  I expect to find checkbox with text "I\'ve read and accept the Terms and Conditions"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And  I expect to find button with text "Start" is disable',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I click checkbox with text "I\'ve read and accept the Terms and Conditions"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find button with text "Start" is enable',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on button with text "Start"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find the text "Survey 1/3"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And  I expect to find the text "In the past week, which emotion did you feel most often?"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And  I expect to find button with text "Next" is disable',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on text "Happy"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I tap on text "Excited"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find button with text "Next" is enable',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on button with text "Next"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find the text "Survey 2/3"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And  I expect to find the text "Does this emotion affect your temper during the rest of the day?"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And  I expect to find button with text "Next" is disable',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on text "Aggreed"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find button with text "Next" is enable',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on button with text "Next"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find the text "Survey 3/3"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And  I expect to find the text "What event or events caused you to feel that emotion most frequently?"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I fill text filed with text "Bazinga"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find button with text "Next" is enable',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on button with text "Next"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find the text "Thank you very much for your participation."',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I expect to find button with text "Close" is enable',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: () async => onBeforeRunFeature(
            'The product owner requires to have the questions, answers as JSON file',
            <String>[],
          ),
          onAfter: () async => onAfterRunFeature(
            'The product owner requires to have the questions, answers as JSON file',
          ),
        );
      },
    );
  }
}

void executeTestSuite(
  TestConfiguration configuration,
  Future<void> Function(World) appMainFunction,
) {
  _CustomGherkinIntegrationTestRunner(configuration, appMainFunction).run();
}

import 'dart:async';
import 'dart:developer';

import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';
// The application under test.
import 'package:poll_flutter/main.dart' as app;

import 'gherkin/hooks/screenshots_hook.dart';
import 'gherkin/index.dart';
import 'test_injection.dart';

part 'gherkin_suite_test.g.dart';

@GherkinTestSuite()
Future<void> main(List<String> args) async {
  log("currentEnv ${const String.fromEnvironment("app_env")}");
  if (const String.fromEnvironment("app_env") == "test") {
    configureTestInjection();
  }
  executeTestSuite(
    FlutterTestConfiguration.DEFAULT([])
      ..defaultTimeout = const Duration(minutes: 6)
      ..reporters = [
        StdoutReporter(MessageLevel.verbose)
          ..setWriteLineFn(log)
          ..setWriteFn(log),
        ProgressReporter()
          ..setWriteLineFn(log)
          ..setWriteFn(log),
        TestRunSummaryReporter()
          ..setWriteLineFn(log)
          ..setWriteFn(log),
        JsonReporter(writeReport: (_, __) => Future<void>.value())
      ]
      ..hooks = [AttachScreenshotStepHook()]
      ..stepDefinitions = [
        theBackendRespondWithData(),
        iOpenTheApp(),
        iExpectToFindTheText(),
        iExpectToFindTheTextWithCheckBox(),
        iExpectToFindButtonWithTextIsDisable(),
        iClickCheckboxWithText(),
        iExpectToFindButtonWithTextIsEnable(),
        iTapOnButtonWithText(),
        iTapOnText(),
        iFillTextFiledWithText()
      ],
    (World world) async => app.main(),
  );
}

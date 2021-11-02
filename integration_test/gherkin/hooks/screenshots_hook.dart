import 'dart:convert';

import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:poll_flutter/base/index.dart';

import '../../test_injection.dart';

class AttachScreenshotStepHook extends Hook {
  /// The priority to assign to this hook.
  /// Higher priority gets run first so a priority of 10 is run before a priority of 2
  @override
  int get priority => 100;

  /// Run before any scenario in a test run have executed
  @override
  Future<void> onBeforeRun(TestConfiguration config) async {
    logger.i("before run hook");
  }

  /// Run after all scenarios in a test run have completed
  @override
  Future<void> onAfterRun(TestConfiguration config) async {
    logger.i("onAfterRun");
  }

  /// Run before a scenario and it steps are executed
  @override
  Future<void> onAfterScenario(
      TestConfiguration config, String scenario, Iterable<Tag> tags) async {
    // TODO: implement onAfterScenario
    logger.i("running hook after scenario '$scenario'");

    return super.onAfterScenario(config, scenario, tags);
  }

  /// Run after a scenario has executed
  @override
  Future<void> onBeforeScenario(
      TestConfiguration config, String scenario, Iterable<Tag> tags) async {
// Set up the SettingsController, which will glue user settings to multiple
    // Flutter Widgets.
    logger.i("running hook before scenario '${scenario}'");
    await mockServer.start();

    return super.onBeforeScenario(config, scenario, tags);
  }

  /// Run before a step is executed
  @override
  Future<void> onBeforeStep(World world, String step) async {
    logger.i("onBeforeStep '$step'");

    return super.onBeforeStep(world, step);
  }

  /// Run after a step has executed
  @override
  Future<void> onAfterStep(
      World world, String step, StepResult stepResult) async {
    logger.i("onAfterStep '$step' ${stepResult.result}");
    try {
      final screenshotData = await takeScreenshot(world);
      world.attach(screenshotData, 'image/png', step);
    } catch (e, st) {
      world.attach('Failed to take screenshot\n$e\n$st', 'text/plain', step);
    }
    return super.onAfterStep(world, step, stepResult);
  }
}

Future<String> takeScreenshot(World world) async {
  final bytes = await (world as FlutterWorld).appDriver.screenshot();

  return base64Encode(bytes);
}

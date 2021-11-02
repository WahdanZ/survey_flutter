import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';
import 'package:poll_flutter/di/injector.dart';
import 'package:poll_flutter/main.dart';

import '../../test_injection.dart';
import 'utils.dart';

StepDefinitionGeneric theBackendRespondWithData() {
  return given1<String, FlutterWidgetTesterWorld>(
      'The Backend Respond with data', (data, context) async {
    inject<Dio>(instanceName: "dio_client").interceptors.requestLock.unlock();
    mockServer.enqueue(body: data, headers: {
      "Content-Type": "application/json",
    });
  });
}

StepDefinitionGeneric iOpenTheApp() {
  return when<FlutterWidgetTesterWorld>('I open the app', (context) async {
    await context.world.appDriver.nativeDriver.pumpWidget(MyApp());
    await waitUntilFind(find.byType(MyApp), context.world.appDriver);
  });
}

StepDefinitionGeneric iExpectToFindTheText() {
  return then1<String, FlutterWidgetTesterWorld>(
      'I expect to find the text {string}', (String text, context) async {
    await waitUntilFind(find.text(text), context.world.appDriver);
  });
}

StepDefinitionGeneric iExpectToFindTheTextWithCheckBox() {
  return and1<String, FlutterWidgetTesterWorld>(
      'I expect to find checkbox with text {string}',
      (String text, context) async {
    expect(find.byWidgetPredicate((widget) {
      if (widget is RichText) {
        return widget.text.toPlainText() == text;
      }
      return false;
    }), findsOneWidget);
    await context.world.appDriver.findBy(Checkbox, FindType.type);
  });
}

StepDefinitionGeneric iExpectToFindButtonWithTextIsDisable() {
  return and1<String, FlutterWidgetTesterWorld>(
      'I expect to find button with text {string} is disable',
      (String text, context) async {
    await context.world.appDriver.findBy(text, FindType.text);
    expect(
        find.byWidgetPredicateOf<ElevatedButton>(
            widgetPredicate: (w) => w.onPressed == null),
        findsOneWidget);
  });
}

StepDefinitionGeneric iClickCheckboxWithText() {
  return when1<String, FlutterWidgetTesterWorld>(
      'I click checkbox with text {string}', (String text, context) async {
    expect(find.byWidgetPredicate((widget) {
      if (widget is RichText) {
        return widget.text.toPlainText() == text;
      }
      return false;
    }), findsOneWidget);
    await context.world.appDriver.tap(find.byType(Checkbox));
    await context.world.appDriver.waitForAppToSettle();
  });
}

StepDefinitionGeneric iExpectToFindButtonWithTextIsEnable() {
  return then1<String, FlutterWidgetTesterWorld>(
      'I expect to find button with text {string} is enable',
      (String text, context) async {
    await context.world.appDriver.waitForAppToSettle();
    await context.world.appDriver.findBy(text, FindType.text);
    expect(
        find.byWidgetPredicateOf<ElevatedButton>(
            widgetPredicate: (w) => w.onPressed != null),
        findsOneWidget);
  });
}

StepDefinitionGeneric iTapOnButtonWithText() {
  return when1<String, FlutterWidgetTesterWorld>(
      'I tap on button with text {string}', (String text, context) async {
    await context.world.appDriver.waitForAppToSettle();
    await context.world.appDriver.tap(find.textContaining(text));
    await context.world.appDriver.waitForAppToSettle();
  });
}

StepDefinitionGeneric iTapOnText() {
  return when1<String, FlutterWidgetTesterWorld>('I tap on text {string}',
      (String text, context) async {
    // await context.world.appDriver.tap(find.text(text).first);
    await context.world.appDriver.tap(find.text(text).last);
    await context.world.appDriver.waitForAppToSettle();
  });
}

StepDefinitionGeneric iFillTextFiledWithText() {
  return when1<String, FlutterWidgetTesterWorld>(
      'I fill text filed with text {string}', (String text, context) async {
    await context.world.appDriver.enterText(find.byType(TextField), text);
    await context.world.appDriver.waitForAppToSettle();
  });
}

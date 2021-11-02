import 'package:flutter/widgets.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';

typedef WidgetByPredicate<T> = bool Function(T widget);

Future<dynamic> waitUntilFind(
  Finder finder,
  AppDriverAdapter appDriver, {
  Duration? timeout = const Duration(seconds: 10),
  Duration? pollInterval = const Duration(milliseconds: 500),
}) async {
  await appDriver.waitForAppToSettle();
  return appDriver.waitUntil(() => appDriver.isPresent(finder));
}

Future<dynamic> waitUntilAbsent(
  Finder finder,
  AppDriverAdapter appDriver, {
  Duration? timeout = const Duration(seconds: 10),
  Duration? pollInterval = const Duration(milliseconds: 500),
}) async {
  await appDriver.waitForAppToSettle();
  return appDriver.waitUntil(() => appDriver.isAbsent(finder));
}

Future<T> findWidgetPredicate<T>(
  AppDriverAdapter appDriver,
  WidgetByPredicate<T> widgetPredicate,
) {
  return appDriver.widget<T>(find.byWidgetPredicate((Widget widget) {
    if (widget.runtimeType is T) {
      return widgetPredicate(widget as T);
    } else {
      return false;
    }
  }));
}

class PredicateWidgetFinderOf<T> extends MatchFinder {
  final WidgetByPredicate<T>? widgetPredicate;

  PredicateWidgetFinderOf({this.widgetPredicate, bool skipOffstage = true})
      : super(skipOffstage: skipOffstage);

  @override
  String get description => 'Finds ${T.runtimeType}';

  @override
  bool matches(Element candidate) {
    final Widget widget = candidate.widget;
    return widget is T && (widgetPredicate?.call(widget as T) ?? true);
  }
}

extension PredicateWidgetFinderByExt on CommonFinders {
  Finder byWidgetPredicateOf<T>(
          {WidgetByPredicate<T>? widgetPredicate, bool skipOffstage = true}) =>
      PredicateWidgetFinderOf<T>(
          skipOffstage: skipOffstage, widgetPredicate: widgetPredicate);
}

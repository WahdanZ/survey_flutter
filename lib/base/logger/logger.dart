import 'dart:convert';
import 'dart:isolate';

import 'package:logger/logger.dart';

class SimpleLogPrinter extends LogPrinter {
  SimpleLogPrinter(this.className, {this.colorsEnabled = true}) {
    counter++;
  }

  static int counter = 0;
  final String className;
  final bool colorsEnabled;

  @override
  List<String> log(LogEvent event) {
    final logColor = PrettyPrinter.levelColors[event.level];
    final emoji = PrettyPrinter.levelEmojis[event.level];
    final message = event.message;
    const splitter = LineSplitter();
    final splitMessage = splitter.convert('$message');
    splitMessage[0] =
        '${DateTime.now().toString() + ' ${Isolate.current.debugName} '} $emoji $className-($counter)  - ${splitMessage[0]}';
    if (colorsEnabled) {
      return splitMessage.map((line) => logColor!(line)).toList();
    }
    return splitMessage;
  }
}

Logger getLogger([String? className]) {
  return Logger(
    printer: SimpleLogPrinter(className ?? 'App'),
  );
}

final logy = Logger(
  printer: PrettyPrinter(
      methodCount: 2, // number of method calls to be displayed
      errorMethodCount: 8, // number of method calls if stacktrace is provided
      lineLength: 120, // width of the output
      colors: true, // Colorful log messages
      printEmojis: true, // Print an emoji for each log message
      printTime: false // Should each log print contain a timestamp
      ),
);

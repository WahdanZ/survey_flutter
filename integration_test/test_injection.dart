import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:poll_flutter/di/injector.dart';

import 'test_injection.config.dart';

@InjectableInit(generateForDir: ['integration_test'])
void configureTestInjection() {
  log("configureTestInjection");
  $initGetIt(getIt, environment: 'test');
}

@module
abstract class AppTestModule {
  @LazySingleton(env: [Environment.test])
  @Named('base_url')
  String get baseUrl => inject<MockWebServer>().url;

  @LazySingleton()
  MockWebServer get mockServer => MockWebServer();

// @LazySingleton()
// DioAdapter get dioAdapter => DioAdapter(dio: getIt());
}

final MockWebServer mockServer = inject();

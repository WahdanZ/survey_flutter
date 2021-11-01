import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_flutter/base/index.dart';

// Project imports:
import 'injector.config.dart';

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies({String? environment}) async {
  await $initGetIt(getIt, environmentFilter: NoEnvOrContains(environment));
  if (environment == Environment.test) {
    logger.d("testing env");
    getIt.allowReassignment = true;
  }
}

T inject<T extends Object>({String? instanceName}) {
  return getIt.get<T>(instanceName: instanceName);
}

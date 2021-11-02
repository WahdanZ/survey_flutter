// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:mock_web_server/mock_web_server.dart' as _i3;

import 'test_injection.dart' as _i4;

const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appTestModule = _$AppTestModule();
  gh.lazySingleton<_i3.MockWebServer>(() => appTestModule.mockServer);
  gh.lazySingleton<String>(() => appTestModule.baseUrl,
      instanceName: 'base_url', registerFor: {_test});
  return get;
}

class _$AppTestModule extends _i4.AppTestModule {}

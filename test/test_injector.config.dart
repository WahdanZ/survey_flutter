// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:poll_flutter/features/poll/data/data_sources/remote/poll_remote_data_source.dart'
    as _i5;
import 'package:poll_flutter/features/poll/domain/index.dart' as _i6;

import 'test_injector.dart' as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.DioAdapterMock>(() => _i4.DioAdapterMock());
  gh.lazySingleton<_i5.PollRemoteDataSource>(
      () => _i4.PollRemoteDataSourceMock());
  gh.lazySingleton<_i6.PollRepository>(() => _i4.PollRepositoryMock());
  return get;
}

class _$RegisterModule extends _i4.RegisterModule {}

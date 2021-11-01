import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/poll_remote_data_source.dart';
import 'package:poll_flutter/features/poll/domain/index.dart';

import 'test_injector.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(generateForDir: ['test'])
void configureTestInjection() => $initGetIt(getIt);

@LazySingleton()
class DioAdapterMock extends Mock implements HttpClientAdapter {}

@LazySingleton(as: PollRepository)
class PollRepositoryMock extends Mock implements PollRepository {}

@LazySingleton(as: PollRemoteDataSource)
class PollRemoteDataSourceMock extends Mock implements PollRemoteDataSource {}

@module
abstract class RegisterModule {
  @LazySingleton()
  Dio get dio => Dio()..httpClientAdapter = getIt<DioAdapterMock>();
}

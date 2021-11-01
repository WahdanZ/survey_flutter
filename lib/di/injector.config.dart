// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/poll/data/data_sources/remote/api/poll_api_data_source.dart'
    as _i14;
import '../features/poll/data/data_sources/remote/api/poll_client.dart' as _i12;
import '../features/poll/data/data_sources/remote/firebase/poll_firebase_data_source.dart'
    as _i9;
import '../features/poll/data/data_sources/remote/poll_remote_data_source.dart'
    as _i8;
import '../features/poll/data/mapper/answer_mapper.dart' as _i3;
import '../features/poll/data/mapper/poll_mapper.dart' as _i13;
import '../features/poll/data/mapper/question_mapper.dart' as _i10;
import '../features/poll/data/mapper/question_type_map.dart' as _i11;
import '../features/poll/data/repositories/poll_repository.dart' as _i16;
import '../features/poll/domain/repositories/poll_repository.dart' as _i6;
import '../features/poll/domain/use_cases/get_latest_poll_use_cast.dart' as _i5;
import '../features/poll/index.dart' as _i15;
import '../features/poll/presentation/manager/poll_form_bloc.dart' as _i7;
import 'app_module.dart' as _i17;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.AnswerMapper>(() => _i3.AnswerMapper());
  gh.lazySingleton<_i4.Dio>(() => appModule.dio, instanceName: 'dio_client');
  gh.factory<_i5.GetLatestPollUseCase>(
      () => _i5.GetLatestPollUseCase(get<_i6.PollRepository>()));
  gh.factory<_i7.PollFormBloc>(
      () => _i7.PollFormBloc(get<_i5.GetLatestPollUseCase>()));
  gh.factory<_i8.PollRemoteDataSource>(() => _i9.PollFireBaseRemoteDataSource(),
      instanceName: 'Firebase');
  gh.factory<_i10.QuestionMapper>(() => _i10.QuestionMapper(
      get<_i3.AnswerMapper>(), get<_i11.QuestionTypeMap>()));
  gh.lazySingleton<String>(() => appModule.baseUrl,
      instanceName: 'base_url', registerFor: {_prod, _dev});
  gh.factory<_i12.PollClient>(() => _i12.PollClient(
      get<_i4.Dio>(instanceName: 'dio_client'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.factory<_i13.PollMapper>(
      () => _i13.PollMapper(get<_i10.QuestionMapper>()));
  gh.factory<_i8.PollRemoteDataSource>(
      () => _i14.PollApiRemoteDataSource(get<_i12.PollClient>()),
      instanceName: 'Api');
  gh.factory<_i15.PollRepository>(() => _i16.PollRepositoryImp(
      get<_i8.PollRemoteDataSource>(), get<_i13.PollMapper>()));
  return get;
}

class _$AppModule extends _i17.AppModule {}

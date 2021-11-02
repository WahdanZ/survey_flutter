// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/poll/data/data_sources/remote/api/poll_api_data_source.dart'
    as _i16;
import '../features/poll/data/data_sources/remote/api/poll_client.dart' as _i14;
import '../features/poll/data/data_sources/remote/firebase/poll_firebase_data_source.dart'
    as _i9;
import '../features/poll/data/data_sources/remote/poll_remote_data_source.dart'
    as _i8;
import '../features/poll/data/mapper/answer_mapper.dart' as _i3;
import '../features/poll/data/mapper/poll_answer_mapper.dart' as _i7;
import '../features/poll/data/mapper/poll_mapper.dart' as _i18;
import '../features/poll/data/mapper/question_mapper.dart' as _i17;
import '../features/poll/data/mapper/question_type_map.dart' as _i12;
import '../features/poll/data/repositories/poll_repository.dart' as _i11;
import '../features/poll/domain/repositories/poll_repository.dart' as _i6;
import '../features/poll/domain/use_cases/get_latest_poll_use_cast.dart' as _i5;
import '../features/poll/domain/use_cases/submit_poll_use_case.dart' as _i13;
import '../features/poll/index.dart' as _i10;
import '../features/poll/presentation/manager/poll_form_bloc.dart' as _i15;
import 'app_module.dart' as _i19;

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
  gh.factory<_i7.PollAnswerMapper>(() => _i7.PollAnswerMapper());
  gh.factory<_i8.PollRemoteDataSource>(() => _i9.PollFireBaseRemoteDataSource(),
      instanceName: 'Firebase');
  gh.factory<_i10.PollRepository>(() => _i11.PollRepositoryImp(
      get<_i10.PollRemoteDataSource>(instanceName: 'RestApi'),
      get<_i10.PollMapper>(),
      get<_i7.PollAnswerMapper>()));
  gh.factory<_i12.QuestionTypeMapper>(() => _i12.QuestionTypeMapper());
  gh.lazySingleton<String>(() => appModule.baseUrl,
      instanceName: 'base_url', registerFor: {_prod, _dev});
  gh.factory<_i13.SubmitPollUseCase>(
      () => _i13.SubmitPollUseCase(get<_i10.PollRepository>()));
  gh.factory<_i14.PollClient>(() => _i14.PollClient(
      get<_i4.Dio>(instanceName: 'dio_client'),
      baseUrl: get<String>(instanceName: 'base_url')));
  gh.factory<_i15.PollFormBloc>(() => _i15.PollFormBloc(
      get<_i5.GetLatestPollUseCase>(), get<_i13.SubmitPollUseCase>()));
  gh.factory<_i8.PollRemoteDataSource>(
      () => _i16.PollApiRemoteDataSource(get<_i14.PollClient>()),
      instanceName: 'RestApi');
  gh.factory<_i17.QuestionMapper>(() => _i17.QuestionMapper(
      get<_i3.AnswerMapper>(), get<_i12.QuestionTypeMapper>()));
  gh.factory<_i18.PollMapper>(
      () => _i18.PollMapper(get<_i17.QuestionMapper>()));
  return get;
}

class _$AppModule extends _i19.AppModule {}

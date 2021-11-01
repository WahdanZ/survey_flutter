import 'package:mocktail/mocktail.dart';
import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/poll_remote_data_source.dart';
import 'package:poll_flutter/features/poll/data/repositories/poll_repository.dart';
import 'package:poll_flutter/features/poll/domain/index.dart';
import 'package:poll_flutter/features/poll/index.dart';
import 'package:test/test.dart';

import '../../../../../test_injector.dart';
import '../data_sources/remote/api/mocks.dart';

void main() {
  setUpAll(() {
    configureTestInjection();
  });
  group('Poll Repository  Tests', () {
    late PollRemoteDataSource pollMockRemoteDataSource;
    late PollRepository pollRepository;
    setUp(() {
      pollMockRemoteDataSource = getIt();
      pollRepository = PollRepositoryImp(pollMockRemoteDataSource,
          PollMapper(QuestionMapper(AnswerMapper(), QuestionTypeMap())));
    });
    test('get Poll successfully ', () async {
      when(() => pollMockRemoteDataSource.getLatestPoll())
          .thenAnswer((_) async => CustomResult(mockModel));
      final CustomResult<Poll> result = await pollRepository.getLatestPoll();

      expect(result, CustomResult(mockEntity));
    });
    test('get Poll no internet connection ', () async {
      when(() => pollMockRemoteDataSource.getLatestPoll())
          .thenAnswer((_) async => CustomResult.failure(Failure.noInternet()));
      final res = await pollRepository.getLatestPoll();

      final CustomResult<Poll> expected =
          CustomResult.failure(Failure.noInternet());

      expect(res, expected);
    });
  });
}

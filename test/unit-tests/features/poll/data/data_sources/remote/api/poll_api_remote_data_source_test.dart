import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/api/poll_api_data_source.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/api/poll_client.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/poll_remote_data_source.dart';
import 'package:poll_flutter/features/poll/data/models/poll_model.dart';
import 'package:test/test.dart';

import '../../../../../../../test_injector.dart';
import 'mocks.dart';

void main() {
  setUpAll(() {
    configureTestInjection();
    registerFallbackValue(RequestOptionsFake());
  });
  group('Poll Api Remote Datasource Tests', () {
    late PollClient clinet;
    late DioAdapterMock dioAdapterMock;
    late PollRemoteDataSource pollApiRemoteDataSource;
    setUp(() {
      dioAdapterMock = getIt();
      clinet = PollClient(getIt());
      pollApiRemoteDataSource = PollApiRemoteDataSource(clinet);
    });
    test('get Poll successfully ', () async {
      final httpResponse = ResponseBody.fromString(
        mockPollResponse200,
        200,
        headers: dioHttpHeadersForResponseBody,
      );
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => httpResponse);
      final res = await pollApiRemoteDataSource.getLatestPoll();

      res.maybeWhen((result) {
        expect(mockModel, result);
      }, orElse: () => throw "failed to get poll");
    });
    test('get Poll with 404 error ', () async {
      final httpResponse = ResponseBody.fromString(
        "",
        404,
        headers: dioHttpHeadersForResponseBody,
      );
      when(() => dioAdapterMock.fetch(any(), any(), any()))
          .thenAnswer((_) async => httpResponse);
      final res = await pollApiRemoteDataSource.getLatestPoll();

      final CustomResult<PollModel> expected =
          CustomResult.failure(Failure.api(message: ''));

      expect(res, expected);
    });
  });
}

class RequestOptionsFake extends Fake implements RequestOptions {}

const dioHttpHeadersForResponseBody = {
  Headers.contentTypeHeader: [Headers.jsonContentType],
};
void emptyFun() => {};

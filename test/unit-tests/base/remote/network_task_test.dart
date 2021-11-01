import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/base/remote/dio_netowrk_task.dart';
import 'package:test/test.dart';

class FakeTask extends Mock {
  Future<String> getFakeData();
}

void main() {
  setUpAll(() {
    registerFallbackValue(FakeTask());
  });
  group("Network Task Test", () {
    test('Return Custom Result of data if there is no error', () async {
      late FakeTask fakeTask;
      fakeTask = FakeTask();

      when(() => fakeTask.getFakeData()).thenAnswer((_) async => "Okay");
      final result =
          await DioNetworkTask(() => fakeTask.getFakeData()).execute();
      expect(result, CustomResult("Okay"));
    });
    test('Return  Failure of No Internet connection if connection timeout',
        () async {
      late FakeTask fakeTask;
      fakeTask = FakeTask();
      when(() => fakeTask.getFakeData()).thenAnswer((_) async =>
          throw (DioError(
              requestOptions: RequestOptions(path: ''),
              type: DioErrorType.connectTimeout)));

      final CustomResult<String> result =
          await DioNetworkTask(() => fakeTask.getFakeData()).execute();
      final CustomResult<String> expected =
          CustomResult.failure(Failure.noInternet());
      expect(result, expected);
    });

    test('Return  Failure of UnAuthorized if api return 41', () async {
      late FakeTask fakeTask;
      fakeTask = FakeTask();
      when(() => fakeTask.getFakeData()).thenAnswer((_) async =>
          throw (DioError(
              requestOptions: RequestOptions(path: ''),
              response: Response(
                  requestOptions: RequestOptions(path: ''), statusCode: 401),
              type: DioErrorType.response)));

      final result =
          await DioNetworkTask(() => fakeTask.getFakeData()).execute();
      final CustomResult<String> expected =
          CustomResult.failure(Failure.unAuthorized());

      expect(result, expected);
    });
  });
}

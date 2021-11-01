import 'package:dio/dio.dart';

import '../index.dart';

typedef NetworkCallFunction<T> = Future<T> Function();

abstract class NetworkTask<T> {
  final logger = getLogger('NetWorkTask');

  NetworkTask(this._task);

  final FutureTask<T> _task;

  Future<CustomResult<T>> execute(
          {NetworkErrorMapping<T>? networkErrorMapping,
          ErrorMapping? errorMapping}) =>
      _task().then((response) {
        logger.i('response ${T.runtimeType}');

        return CustomResult<T>(response);
      }).catchError((error) async {
        final x = onErrorMapping(error, networkErrorMapping, errorMapping);
        return x;
      });

  CustomResult<T> onErrorMapping(error,
      NetworkErrorMapping<T>? networkErrorMapping, ErrorMapping? errorMapping);
}

CustomResult<T> onError<T>(error, StackTrace? stackTrace) {
  logger.e('NetworkError ${T.runtimeType}', error, stackTrace);
  return const CustomResult.failure(Failure.unknown());
}

typedef ErrorMapping = Failure Function(Map? map, {int? code});
typedef NetworkErrorMapping<T> = CustomResult<T> Function(
    DioError e, ErrorMapping? errorMapping);

typedef FutureTask<T> = Future<T> Function();

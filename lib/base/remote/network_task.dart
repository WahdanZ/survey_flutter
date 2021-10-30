import 'package:dio/dio.dart';

import '../index.dart';

typedef NetworkCallFunction<T> = Future<T> Function();
final logger = getLogger('NetWorkTask');

class NetworkTask<T> {
  NetworkTask(this._task);

  final FutureTask<T> _task;

  Future<CustomResult<T>> execute(
          {NetworkErrorMapping<T>? networkErrorMapping,
          ErrorMapping? errorMapping}) =>
      _task().then((response) {
        return CustomResult<T>(response);
      }).catchError((error) async {
        logger.e(error);
        if (error is DioError) {
          final e = error;
          if (DioErrorType.receiveTimeout == e.type ||
              DioErrorType.connectTimeout == e.type) {
            logger.e('CONNECT_TIMEOUT');
            return _noInternet<T>();
          }
          if (e.response?.statusCode != null) {
            return networkErrorMapping?.call(e, errorMapping) ??
                _networkErrorMapping<T>(e, errorMapping);
          }
        }
        return _onError<T>(error, error.stackTrace);
      });
}

CustomResult<T> _noInternet<T>() {
  logger.e('NetworkError');
  return const CustomResult.failure(Failure.noInternet());
}

CustomResult<T> _onError<T>(error, StackTrace? stackTrace) {
  logger.e('NetworkError', error, stackTrace);
  return const CustomResult.failure(Failure.unknown());
}

CustomResult<T> _networkErrorMapping<T>(
    DioError e, ErrorMapping? errorMapping) {
  switch (e.response?.statusCode ?? -1) {
    case 401:
      return CustomResult.failure(Failure.unAuthorized(
          message: (errorMapping?.call(
              e.response?.data as Map<dynamic, dynamic>?,
              code: e.response?.statusCode))));
    default:
      return CustomResult.failure((errorMapping?.call(
              e.response?.data as Map<dynamic, dynamic>?,
              code: e.response?.statusCode)) ??
          Failure.api(message: e.response?.data));
  }
}

typedef ErrorMapping = Failure Function(Map? map, {int? code});
typedef NetworkErrorMapping<T> = CustomResult<T> Function(
    DioError e, ErrorMapping? errorMapping);

typedef FutureTask<T> = Future<T> Function();

import 'package:dio/dio.dart';
import 'package:poll_flutter/base/index.dart';

class DioNetworkTask<T> extends NetworkTask<T> {
  DioNetworkTask(FutureTask<T> task) : super(task);

  @override
  CustomResult<T> onErrorMapping(error,
      NetworkErrorMapping<T>? networkErrorMapping, ErrorMapping? errorMapping) {
    logger.e(error);
    if (error is DioError) {
      final e = error;
      if (DioErrorType.receiveTimeout == e.type ||
          DioErrorType.connectTimeout == e.type) {
        logger.e('CONNECT_TIMEOUT ${T.runtimeType}');
        return noInternet<T>();
      }
      if (e.response?.statusCode != null) {
        return networkErrorMapping?.call(e, errorMapping) ??
            _networkErrorMapping<T>(e, errorMapping);
      }
    }
    return onError(error, error.stackTrace);
  }
}

CustomResult<T> noInternet<T>() {
  logger.e('NetworkError  ${T.runtimeType}');
  return CustomResult.failure(Failure.noInternet());
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

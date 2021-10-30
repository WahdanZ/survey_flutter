// Dart imports:
import 'dart:async';

// Project imports:

import '../../result/result.dart';
import 'index.dart';

abstract class UseCase<T, P extends Params> {
  /// Builds the [Future]. [Params] is required
  /// by the [UseCase] to retrieve the appropriate data from the repository
  Future<T> buildUseCase(P params);
  Future<T> execute({required P params}) async {
    return buildUseCase(params);
  }
}

abstract class UseCaseResult<T, P extends Params> {
  /// Builds the [Future]. [Params] is required
  /// by the [UseCase] to retrieve the appropriate data from the repository
  Future<CustomResult<T>> buildUseCase(P? params);
  Future<CustomResult<T>> execute({P? params}) {
    return buildUseCase(params);
  }
}

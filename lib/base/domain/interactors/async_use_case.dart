// Dart imports:
import 'dart:async';

// Package imports:
import 'package:equatable/equatable.dart';

abstract class AsyncUseCase<T, P extends Params> {
  /// Builds the [Future]. [Params] is required
  /// by the [AsyncUseCase] to retrieve the appropraite data from the repository
  Future<T> buildUseCase(P? params);

  Future<T> execute({P? params}) async {
    return await buildUseCase(params);
  }
}

abstract class Params extends Equatable {}

class Any extends Params {
  @override
  List<Object> get props => [];
}

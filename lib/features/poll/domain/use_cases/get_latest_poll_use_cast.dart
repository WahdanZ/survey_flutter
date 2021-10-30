import 'package:poll_flutter/base/domain/index.dart';
import 'package:poll_flutter/base/result/result.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';
import 'package:poll_flutter/features/poll/domain/repositories/poll_repository.dart';

class GetLatestPollUseCase extends UseCaseResult<Poll, Any> {
  final PollRepository _repository;

  GetLatestPollUseCase(this._repository);
  @override
  Future<CustomResult<Poll>> buildUseCase(Any? params) {
    return _repository.getLatestPoll();
  }
}

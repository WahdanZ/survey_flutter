import 'package:poll_flutter/base/domain/index.dart';
import 'package:poll_flutter/base/result/result.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';
import 'package:poll_flutter/features/poll/index.dart';

class SubmitPollUseCase extends UseCaseResult<Object, SubmitPollUseCaseParm> {
  final PollRepository _repository;

  SubmitPollUseCase(this._repository);
  @override
  Future<CustomResult<Object>> buildUseCase(SubmitPollUseCaseParm params) {
    return _repository.submitPoll(params.pollId, params.list);
  }
}

class SubmitPollUseCaseParm extends Params {
  final String pollId;
  final List<PollAnswer> list;

  SubmitPollUseCaseParm(
    this.pollId,
    this.list,
  );

  @override
  List<Object?> get props => [list];
}

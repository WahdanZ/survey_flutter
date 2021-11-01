import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/data/models/poll_answer_model.dart';
import 'package:poll_flutter/features/poll/data/models/poll_model.dart';

abstract class PollRemoteDataSource {
  Future<CustomResult<PollModel>> getLatestPoll();
  Future<CustomResult<Object>> submitPoll(
      String pollId, List<PollAnswerModel> list);
}

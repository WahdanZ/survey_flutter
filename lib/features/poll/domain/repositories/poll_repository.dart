import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';

abstract class PollRepository {
  Future<CustomResult<Poll>> getLatestPoll();

  Future<CustomResult<Object>> submitPoll(String pollId, List<PollAnswer> list);
}

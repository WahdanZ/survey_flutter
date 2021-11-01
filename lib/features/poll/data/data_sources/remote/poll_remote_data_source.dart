import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/data/models/poll.dart';

abstract class PollRemoteDataSource {
  Future<CustomResult<PollModel>> getLatestPoll();
}

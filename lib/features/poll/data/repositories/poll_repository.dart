import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';
import 'package:poll_flutter/features/poll/index.dart';

class PollRepositoryImp extends PollRepository {
  Future<CustomResult<Poll>> getLatestPoll() async {
    return CustomResult(Poll.fromJson(json));
  }
}

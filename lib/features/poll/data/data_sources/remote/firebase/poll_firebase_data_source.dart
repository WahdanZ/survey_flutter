import 'package:injectable/injectable.dart';
import 'package:poll_flutter/base/result/result.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/poll_remote_data_source.dart';
import 'package:poll_flutter/features/poll/data/models/poll_answer_model.dart';
import 'package:poll_flutter/features/poll/data/models/poll_model.dart';

@Injectable(
  as: PollRemoteDataSource,
)
@Named("Firebase")
class PollFireBaseRemoteDataSource extends PollRemoteDataSource {
  @override
  Future<CustomResult<PollModel>> getLatestPoll() {
    // TODO: implement getLatestPoll
    throw UnimplementedError();
  }

  @override
  Future<CustomResult<Object>> submitPoll(
      String pollId, List<PollAnswerModel> list) {
    // TODO: implement submitPoll
    throw UnimplementedError();
  }
}

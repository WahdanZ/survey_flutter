import 'package:injectable/injectable.dart';
import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/poll_remote_data_source.dart';
import 'package:poll_flutter/features/poll/data/mapper/poll_answer_mapper.dart';
import 'package:poll_flutter/features/poll/data/mapper/poll_mapper.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';
import 'package:poll_flutter/features/poll/index.dart';

@Injectable(as: PollRepository)
class PollRepositoryImp extends PollRepository {
  final PollRemoteDataSource _remoteDataSource;
  final PollMapper _mapper;
  final PollAnswerMapper _pollAnswerMapper;
  PollRepositoryImp(@Named("RestApi") this._remoteDataSource, this._mapper,
      this._pollAnswerMapper);
  Future<CustomResult<Poll>> getLatestPoll() async {
    logger.d("Getting LatestPoll");
    return _remoteDataSource
        .getLatestPoll()
        .map((t) => _mapper.mapFromModel(t));
  }

  @override
  Future<CustomResult<Object>> submitPoll(
      String pollId, List<PollAnswer> list) {
    logger.d("Submitting pollId: $pollId with answers $list");

    return _remoteDataSource.submitPoll(
        pollId, list.map(_pollAnswerMapper.mapFromEntity).toList());
  }
}

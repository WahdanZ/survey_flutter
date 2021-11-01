import 'package:injectable/injectable.dart';
import 'package:poll_flutter/base/index.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/poll_remote_data_source.dart';
import 'package:poll_flutter/features/poll/data/mapper/poll_mapper.dart';
import 'package:poll_flutter/features/poll/domain/entities/index.dart';
import 'package:poll_flutter/features/poll/index.dart';

@Injectable(as: PollRepository)
class PollRepositoryImp extends PollRepository {
  final PollRemoteDataSource _remoteDataSource;
  final PollMapper _mapper;
  PollRepositoryImp(@Named("RestApi") this._remoteDataSource, this._mapper);
  Future<CustomResult<Poll>> getLatestPoll() async {
    return _remoteDataSource
        .getLatestPoll()
        .map((t) => _mapper.mapFromModel(t));
  }
}

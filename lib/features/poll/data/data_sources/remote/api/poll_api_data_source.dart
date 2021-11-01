import 'package:injectable/injectable.dart';
import 'package:poll_flutter/base/remote/dio_netowrk_task.dart';
import 'package:poll_flutter/base/result/result.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/api/poll_client.dart';
import 'package:poll_flutter/features/poll/data/data_sources/remote/poll_remote_data_source.dart';
import 'package:poll_flutter/features/poll/data/models/poll_model.dart';

@Injectable(
  as: PollRemoteDataSource,
)
@Named("RestApi")
class PollApiRemoteDataSource extends PollRemoteDataSource {
  final PollClient _client;

  PollApiRemoteDataSource(this._client);
  @override
  Future<CustomResult<PollModel>> getLatestPoll() {
    return DioNetworkTask(() => _client.getPoll()).execute();
  }
}

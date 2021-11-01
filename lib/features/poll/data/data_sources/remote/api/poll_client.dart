import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:poll_flutter/features/poll/data/models/poll.dart';
import 'package:retrofit/retrofit.dart';

part 'poll_client.g.dart';

@RestApi()
@injectable
abstract class PollClient {
  @factoryMethod
  factory PollClient(@Named('dio_client') Dio dio,
      {@Named('base_url') String baseUrl}) = _PollClient;

  @GET('https://firebasestorage.googleapis.com/v0/b/healy-identity.appspot.com/'
      'o/polls%2FvAJax5hdbF.json'
      '?alt=media&token=48258028-2f77-493d-9e9d-8ca322b3068a')
  Future<PollModel> getPoll();
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PollClient implements PollClient {
  _PollClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<PollModel> getPoll() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        PollModel>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            '/v0/b/healy-identity.appspot.com/o/polls%2FvAJax5hdbF.json?alt=media&token=48258028-2f77-493d-9e9d-8ca322b3068a',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PollModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}

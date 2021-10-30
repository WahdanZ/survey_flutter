class BaseServerError<T> {
  String? title;
  String? traceId;
  String? instance;
  List<T>? errors;

  BaseServerError({this.title, this.traceId, this.instance, this.errors});

  factory BaseServerError.fromMap(
      Map<String, dynamic> map, JsonMapper<T> fromJsonMode) {
    final errors = map['errors'] as List?;

    return BaseServerError(
      title: map['title'] as String?,
      traceId: map['traceId'] as String?,
      instance: map['instance'] as String?,
      errors: List<T>.from(errors?.map((e) => fromJsonMode(e)) ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': title,
      'traceId': traceId,
      'instance': instance,
      'errors': errors,
    } as Map<String, dynamic>;
  }
}

class Error {
  String? _errorCode;
  dynamic _extra;

  String? get errorCode => _errorCode;
  dynamic get extra => _extra;

  Error({String? errorCode, dynamic extra}) {
    _errorCode = errorCode;
    _extra = extra;
  }

  Error.fromJson(dynamic json) {
    _errorCode = json['errorCode'];
    _extra = json['extra'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['errorCode'] = _errorCode;
    map['extra'] = _extra;
    return map;
  }
}

typedef JsonMapper<T> = T Function(Map json); //function signature

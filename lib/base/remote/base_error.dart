class BaseServerError<T> {
  String? title;
  List<T>? errors;

  BaseServerError({this.title, this.errors});

  factory BaseServerError.fromMap(
      Map<String, dynamic> map, JsonMapper<T> fromJsonMode) {
    final errors = map['errors'] as List?;

    return BaseServerError(
      title: map['title'] as String?,
      errors: List<T>.from(errors?.map((e) => fromJsonMode(e)) ?? []),
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'title': title,
      'errors': errors,
    } as Map<String, dynamic>;
  }
}

typedef JsonMapper<T> = T Function(Map json); //function signature

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure(String code) = _ErrorFailure;
  const factory Failure.api({dynamic message}) = _ApiFailure;
  const factory Failure.unAuthorized({dynamic message}) = _UnAuthorizedFailure;
  const factory Failure.noInternet({dynamic message}) = _NoInternetFailure;
  const factory Failure.unknown({dynamic message}) = _UnknownFailure;
}

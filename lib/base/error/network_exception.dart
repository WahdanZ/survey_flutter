// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
abstract class HttpErrors with _$HttpErrors {
  const factory HttpErrors.resourceForbidden({String? exception}) =
      _ResourceForbidden;
  const factory HttpErrors.resourceNotFound({String? exception}) =
      _ResourceNotFound;
  const factory HttpErrors.internalServiceError({String? exception}) =
      _InternalServiceError;
  const factory HttpErrors.badGateWay({String? exception}) = _BadGateWay;
  const factory HttpErrors.resourceRemoved({String? exception}) =
      _ResourceRemoved;
  const factory HttpErrors.removedResourceFound({String? exception}) =
      _RemovedResourceFound;
}

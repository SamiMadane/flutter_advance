import 'package:flutter_advance/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

// freezed is use to generate functions like when, maybeWhen, map, maybeMap, etc i need to use it.
@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}
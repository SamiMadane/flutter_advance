import 'package:flutter_advance/core/networking/api_error_handler.dart';
import 'package:flutter_advance/core/networking/api_result.dart';
import 'package:flutter_advance/core/networking/api_service.dart';
import 'package:flutter_advance/feature/login/data/models/login_request_body.dart';
import 'package:flutter_advance/feature/login/data/models/login_response.dart';

// LoginRepo depends on ApiService
class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ApiErrorHandler.handle(errro));
    }
  }
}
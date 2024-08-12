import 'package:clinic_system/core/network/api_error_handler.dart';
import 'package:clinic_system/core/network/api_result.dart';
import 'package:clinic_system/core/network/api_service.dart';
import 'package:clinic_system/features/auth/signup/data/model/signup_request_body.dart';
import 'package:clinic_system/features/auth/signup/data/model/signup_response.dart';

class SignupRepo {
  final ApiService apiService;
  SignupRepo(this.apiService);
  Future<ApiResult<SignupResponse>> signupfromRepo(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await apiService.signUp(signupRequestBody);
      return ApiResult.sucess(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

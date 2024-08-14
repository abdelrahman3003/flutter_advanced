import 'package:clinic_system/core/network/api_error_handler.dart';
import 'package:clinic_system/core/network/api_result.dart';
import 'package:clinic_system/core/network/api_service.dart';
import 'package:clinic_system/features/auth/signIn/data/model/login_requset_body.dart';
import 'package:clinic_system/features/auth/signIn/data/model/login_respons.dart';

class LoginRepo {
  final ApiService apiService;
  LoginRepo(this.apiService);
  Future<ApiResult<LoginRespons>> login(
      LoginRequsetBody loginRequsetBody) async {
    try {
      final response = await apiService.login(loginRequsetBody);
      return ApiResult.sucess(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

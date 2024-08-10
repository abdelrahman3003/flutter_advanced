import 'package:clinic_system/core/network/api_constants.dart';
import 'package:clinic_system/features/auth/signIn/data/model/login_requset_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../features/auth/signIn/data/model/login_respons.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginRespons> login(
    @Body() LoginRequsetBody loginRequsetBody,
  );
}

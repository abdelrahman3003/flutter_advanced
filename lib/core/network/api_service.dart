import 'package:clinic_system/core/network/api_constants.dart';
import 'package:clinic_system/features/auth/signIn/data/model/login_requset_body.dart';
import 'package:clinic_system/features/auth/signup/data/model/signup_request_body.dart';
import 'package:clinic_system/features/auth/signup/data/model/signup_response.dart';
import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../features/auth/signIn/data/model/login_respons.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //auth
  @POST(ApiConstants.login)
  Future<LoginRespons> login(
    @Body() LoginRequsetBody loginRequsetBody,
  );
  @POST(ApiConstants.register)
  Future<SignupResponse> signUp(
    @Body() SignupRequestBody signupRequestBody,
  );

//fetch data home
  @GET(ApiConstants.home)
  Future<DoctorsList> fetchDataHomeFromRepo();
}

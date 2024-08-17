import 'package:clinic_system/core/network/api_error_handler.dart';
import 'package:clinic_system/core/network/api_result.dart';
import 'package:clinic_system/core/network/api_service.dart';
import 'package:clinic_system/features/home/data/model/doctor.dart';

 class HomeRepo {
  final ApiService apiService;
  HomeRepo(this.apiService);
  Future<ApiResult<DoctorsList>> fetchData() async {
    try {
      final response = await apiService.fetchDataHomeFromRepo();
      return ApiResult.sucess(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}

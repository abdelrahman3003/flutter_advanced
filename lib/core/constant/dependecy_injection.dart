import 'package:clinic_system/core/network/api_service.dart';
import 'package:clinic_system/core/network/dio_factory.dart';
import 'package:clinic_system/features/auth/signIn/data/repos/login_repo.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_cubit.dart';
import 'package:clinic_system/features/auth/signup/data/repos/signup_repo.dart';
import 'package:clinic_system/features/auth/signup/presentation/controller/cubit/signup_cubit.dart';
import 'package:clinic_system/features/home/data/repos/api/home_repo.dart';
import 'package:clinic_system/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
Future<void> setupGetit() async {
  Dio dio = DioFactory.getDio();
  getit.registerLazySingleton<ApiService>(() => ApiService(dio));

  //login
  getit.registerLazySingleton<LoginRepo>(() => LoginRepo(getit()));
  getit.registerLazySingleton<LoginCubit>(() => LoginCubit(getit()));
//signUp
  getit.registerLazySingleton<SignupRepo>(() => SignupRepo(getit()));
  getit.registerLazySingleton<SignupCubit>(() => SignupCubit(getit()));

//home
  getit.registerLazySingleton<HomeRepo>(() => HomeRepo(getit()));
  getit.registerLazySingleton<HomeCubit>(() => HomeCubit(getit()));

}

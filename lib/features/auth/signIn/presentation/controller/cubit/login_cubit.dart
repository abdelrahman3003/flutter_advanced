import 'package:clinic_system/core/constant/app_regex.dart';
import 'package:clinic_system/core/network/dio_factory.dart';
import 'package:clinic_system/core/network/sharded_pref.dart';
import 'package:clinic_system/features/auth/signIn/data/model/login_requset_body.dart';
import 'package:clinic_system/features/auth/signIn/data/repos/login_repo.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController =
      TextEditingController(text: 'temsah@gmail.com');
  TextEditingController passwordController =
      TextEditingController(text: 'Abdo123456#');
  LoginRequsetBody? loginRequsetBody;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSepicailCase = false;
  bool hasNumber = false;
  bool hasMixLenght = false;

  bool setUpPasswordControllerListner() {
    passwordController.addListener(
      () {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSepicailCase = AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMixLenght = AppRegex.hasMinLength(passwordController.text);
      },
    );
    if (hasLowerCase &&
        hasUpperCase &&
        hasSepicailCase &&
        hasNumber &&
        hasMixLenght) {
      return true;
    }
    return false;
  }

  void emitLoginStates() async {
    if (formKey.currentState!.validate()) {
      loginRequsetBody = LoginRequsetBody(
          email: emailController.text, password: passwordController.text);
      emit(const LoginState.loading());
      var response = await loginRepo.login(loginRequsetBody!);
      response.when(
          sucess: (data) async {
            await AppService.sharedPreferences
                .setString(ShardedPrefKey.userToken, data.userData!.token!);
            DioFactory.addDioHEaders();
            await AppService.sharedPreferences
                .setString(ShardedPrefKey.step, "2");
            emit(LoginState.success(data));
          },
          failure: (errorHandler) => emit(
                LoginState.error( errorHandler),
              ));
    }
  }
}

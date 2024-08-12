import 'package:clinic_system/features/auth/signup/data/model/signup_request_body.dart';
import 'package:clinic_system/features/auth/signup/data/repos/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constant/app_regex.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.ignupRepo) : super(const SignupState.initial());
  final SignupRepo ignupRepo;
  SignupRequestBody? signupRequestBody;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameControler = TextEditingController();
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSepicailCase = false;
  bool hasNumber = false;
  bool hasMixLenght = false;

  void emitLoginStates() async {
    if (formKey.currentState!.validate()) {
      signupRequestBody = SignupRequestBody(
        name: nameControler.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        confirmpaswword: confirmPasswordController.text,
      );
      emit(const SignupState.loading());
      var response = await ignupRepo.signupfromRepo(signupRequestBody!);
      response.when(
          sucess: (data) {
            emit(SignupState.success(data));
          },
          failure: (errorHandler) => emit(
                SignupState.error(
                    error: errorHandler.apiErrorModel.message ?? ""),
              ));
    }
  }
}

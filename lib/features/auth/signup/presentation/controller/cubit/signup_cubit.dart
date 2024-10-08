import 'package:clinic_system/features/auth/signup/data/model/signup_request_body.dart';
import 'package:clinic_system/features/auth/signup/data/repos/signup_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.ignupRepo) : super(const SignupState.initial());
  final SignupRepo ignupRepo;
  SignupRequestBody? signupRequestBody;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController =
      TextEditingController(text: "abdelrahman@gmail.com");
  TextEditingController passwordController =
      TextEditingController(text: "Dream16797346##");
  TextEditingController confirmPasswordController =
      TextEditingController(text: "Dream16797346##");
  TextEditingController phoneController =
      TextEditingController(text: "01032698780");
  TextEditingController nameControler = TextEditingController(text: "abdo");
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSepicailCase = false;
  bool hasNumber = false;
  bool hasMixLenght = false;

  void emitSignupStates() async {
    if (formKey.currentState!.validate()) {
      signupRequestBody = SignupRequestBody(
        name: "",
        email: '',
        phone: '',
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
                SignupState.error(errorHandler),
              ));
    }
  }
}

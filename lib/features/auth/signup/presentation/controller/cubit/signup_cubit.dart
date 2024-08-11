import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constant/app_regex.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(const SignupState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController =
      TextEditingController();
  TextEditingController passwordController =
      TextEditingController();
        TextEditingController confirmPasswordController =
      TextEditingController();
     TextEditingController phoneController =
      TextEditingController();
      TextEditingController nameControler =
      TextEditingController();
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
}

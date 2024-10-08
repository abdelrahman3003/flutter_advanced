import 'package:clinic_system/core/class/navigator.dart';
import 'package:clinic_system/features/auth/signup/presentation/controller/cubit/signup_cubit.dart';
import 'package:clinic_system/features/auth/signup/presentation/controller/cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_regex.dart';
import '../../../../../../core/constant/routes.dart';
import '../../../../../../core/theme/colors.dart';
import '../../../../../../core/theme/styles.dart';
import '../../../../../../core/theme/widget/app_button.dart';
import '../../../../../../core/theme/widget/app_textformfield.dart';
import '../../../../signIn/presentation/view/widget/password_condition_text.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

bool isCheck = false;
bool isShowPassword = false;
bool isShowConfirmPassword = false;

class _SignupFormState extends State<SignupForm> {
  @override
  void initState() {
    setUpPasswordControllerListner();
    super.initState();
  }

  bool setUpPasswordControllerListner() {
    var cubit = context.read<SignupCubit>();

    cubit.passwordController.addListener(
      () {
        setState(() {
          cubit.hasLowerCase =
              AppRegex.hasLowerCase(cubit.passwordController.text);
          cubit.hasUpperCase =
              AppRegex.hasUpperCase(cubit.passwordController.text);
          cubit.hasSepicailCase =
              AppRegex.hasSpecialCharacter(cubit.passwordController.text);
          cubit.hasNumber = AppRegex.hasNumber(cubit.passwordController.text);
          cubit.hasMixLenght =
              AppRegex.hasMinLength(cubit.passwordController.text);
        });
      },
    );
    if (cubit.hasLowerCase &&
        cubit.hasUpperCase &&
        cubit.hasSepicailCase &&
        cubit.hasNumber &&
        cubit.hasMixLenght) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SignupCubit>();
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
        return Form(
          key: cubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextformfield(
                hint: 'Name',
                controller: cubit.nameControler,
                validator: (value) {
                  if (cubit.nameControler.text.isEmpty) {
                    return "Not valid Name";
                  }

                  return null;
                },
              ),
              SizedBox(height: 16.h),
              AppTextformfield(
                hint: 'Email',
                controller: cubit.emailController,
                validator: (value) {
                  if (cubit.emailController.text.isEmpty ||
                      !AppRegex.isEmailValid(value!)) {
                    return "Not valid Email";
                  }

                  return null;
                },
              ),
              SizedBox(height: 16.h),
              AppTextformfield(
                hint: 'Phone Number',
                keyboardType: TextInputType.number,
                controller: cubit.phoneController,
                validator: (value) {
                  if (cubit.emailController.text.isEmpty ||
                      !AppRegex.isPhoneNumberValid(value!)) {
                    return "Not valid Phone Number";
                  }

                  return null;
                },
              ),
              SizedBox(height: 16.h),
              AppTextformfield(
                controller: cubit.passwordController,
                hint: 'Password',
                isPassword: true,
                isShowPassword: isShowPassword,
                onPressedEye: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                validator: (value) {
                  if (cubit.passwordController.text.isEmpty ||
                      !setUpPasswordControllerListner()) {
                    return "Not valid  Password";
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.h),
              AppTextformfield(
                controller: cubit.confirmPasswordController,
                hint: 'Confirm Password',
                isPassword: true,
                isShowPassword: isShowConfirmPassword,
                onPressedEye: () {
                  setState(() {
                    isShowConfirmPassword = !isShowConfirmPassword;
                  });
                },
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value != cubit.passwordController.text) {
                    return "Not valid confirm Password";
                  }

                  return null;
                },
              ),
              SizedBox(height: 16.h),
              PasswordConditionText(
                  text: "At least 8 characters long",
                  isValidate: cubit.hasMixLenght),
              PasswordConditionText(
                  text: "At least 1 speacial character",
                  isValidate: cubit.hasSepicailCase),
              PasswordConditionText(
                  text: "At least 1 lowercase letter",
                  isValidate: cubit.hasLowerCase),
              PasswordConditionText(
                  text: "At least 1 uppercase letter",
                  isValidate: cubit.hasUpperCase),
              PasswordConditionText(
                  text: "At least 1 number", isValidate: cubit.hasNumber),
              SizedBox(height: 32.h),
              AppButton(
                  text: "Register",
                  onPressed: () {
                    cubit.emitSignupStates();
                  }),
              SizedBox(height: 40.h),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Styles.font14greye400w
                      .copyWith(height: 1.5.h, color: AppColors.grey),
                  children: <TextSpan>[
                    const TextSpan(text: 'By logging, you agree to our '),
                    TextSpan(
                        text: 'Terms & Conditions ',
                        style: Styles.font14black400w),
                    const TextSpan(text: 'and '),
                    TextSpan(
                        text: 'PrivacyPolicy.', style: Styles.font14black400w),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account yet? ',
                      style: Styles.font14black400w),
                  TextButton(
                      onPressed: () {
                        context.pushNameed(Routes.ksinginView);
                      },
                      child: Text('Login ', style: Styles.font14blue400w)),
                ],
              ),
              SizedBox(height: 40.h),
            ],
          ),
        );
      },
    );
  }
}

import 'package:clinic_system/core/class/navigator.dart';
import 'package:clinic_system/core/constant/app_regex.dart';
import 'package:clinic_system/core/constant/routes.dart';
import 'package:clinic_system/core/theme/colors.dart';
import 'package:clinic_system/core/theme/styles.dart';
import 'package:clinic_system/core/theme/widget/app_button.dart';
import 'package:clinic_system/core/theme/widget/app_textformfield.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_cubit.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  bool isCheck = false;
  bool isShowPassword = false;

  @override
  void initState() {
    super.initState();
    context.read<LoginCubit>().setUpPasswordControllerListner();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Form(
          key: cubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text('Welcome Back', style: TextStyles.font24blueBold),
              SizedBox(height: 10.h),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: TextStyles.font14greye400w,
              ),
              SizedBox(height: 36.h),
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
                  bool? isvalidPassword;
                  setState(() {
                    isvalidPassword = cubit.setUpPasswordControllerListner();
                  });

                  if (cubit.passwordController.text.isEmpty ||
                      !isvalidPassword!) {
                    return "Not valid Password";
                  }

                  return null;
                },
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                        activeColor: AppColors.primary,
                        value: isCheck,
                        onChanged: (value) {
                          setState(() {
                            isCheck = value!;
                          });
                        }),
                  ),
                  Text('Remember me', style: TextStyles.font14greye400w),
                  const Spacer(),
                  Text('Forgot Password?', style: TextStyles.font14blue400w),
                ],
              ),
              SizedBox(height: 32.h),
              AppButton(
                  text: "Login",
                  onPressed: () {
                    cubit.emitLoginStates();
                  }),
              SizedBox(height: 40.h),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyles.font14greye400w
                      .copyWith(height: 1.5.h, color: AppColors.grey),
                  children: <TextSpan>[
                    const TextSpan(text: 'By logging, you agree to our '),
                    TextSpan(
                        text: 'Terms & Conditions ',
                        style: TextStyles.font14black400w),
                    const TextSpan(text: 'and '),
                    TextSpan(
                        text: 'PrivacyPolicy.',
                        style: TextStyles.font14black400w),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account yet? ',
                      style: TextStyles.font14black400w),
                  TextButton(
                      onPressed: () {
                        context.pushNameed(Routes.ksignupView);
                      },
                      child:
                          Text('Sign Up ', style: TextStyles.font14blue400w)),
                ],
              ),
              BlocListener<LoginCubit, LoginState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loading: () {
                      showDialog(
                          context: context,
                          builder: (context) => const Center(
                                  child: CircularProgressIndicator(
                                color: AppColors.primary,
                              )));
                    },
                    error: (error) {
                      context.pop();
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          icon: const Icon(
                            Icons.error,
                            color: AppColors.red,
                            size: 32,
                          ),
                          content: Text(
                            error,
                            style: TextStyles.font16whitew600
                                .copyWith(color: AppColors.red),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: Text('GO it',
                                  style: TextStyles.font14blue400w),
                            )
                          ],
                        ),
                      );
                    },
                    success: (data) {
                      context.pop();
                      context.pushNameed(Routes.kHomeView);
                    },
                  );
                },
                child: Container(),
              )
            ],
          ),
        ),
      ),
    )));
  }
}

import 'package:clinic_system/core/theme/colors.dart';
import 'package:clinic_system/core/theme/styles.dart';
import 'package:clinic_system/core/theme/widget/app_button.dart';
import 'package:clinic_system/core/theme/widget/app_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
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
            const AppTextformfield(hint: 'Email'),
            SizedBox(height: 16.h),
            const AppTextformfield(
              hint: 'Password',
              isPassword: true,
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(value: false, onChanged: (value) {}),
                ),
                Text('Remember me', style: TextStyles.font14greye400w),
                const Spacer(),
                Text('Forgot Password?', style: TextStyles.font14blue400w),
              ],
            ),
            SizedBox(height: 32.h),
            const AppButton(text: "Login"),
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
                Text('Sign Up ', style: TextStyles.font14blue400w),
              ],
            )
          ],
        ),
      ),
    )));
  }
}

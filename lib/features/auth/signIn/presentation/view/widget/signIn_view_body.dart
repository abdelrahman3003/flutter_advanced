import 'package:clinic_system/features/auth/signIn/presentation/view/widget/already_have_account.dart';
import 'package:clinic_system/features/auth/signIn/presentation/view/widget/email_and_password.dart';
import 'package:clinic_system/features/auth/signIn/presentation/view/widget/forgetPassword_and%20_remender.dart';
import 'package:clinic_system/features/auth/signIn/presentation/view/widget/terms_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_button.dart';
import 'welcome_back.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

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
            const WelcomeBack(),
            SizedBox(height: 36.h),
            const EmailAndPassword(),
            const ForgetpasswordAndRemender(),
            SizedBox(height: 32.h),
            const LoginButton(),
            SizedBox(height: 40.h),
            const TermsText(),
            SizedBox(height: 24.h),
            const AlreadyHsveAccount(),
          ],
        ),
      ),
    )));
  }
}

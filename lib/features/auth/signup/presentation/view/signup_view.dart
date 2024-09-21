import 'package:clinic_system/features/auth/signup/presentation/view/widget/signup_bloc_listener.dart';
import 'package:clinic_system/features/auth/signup/presentation/view/widget/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/styles.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: 20.h),
          Text('Create Account', style: Styles.font24blueBold),
          SizedBox(height: 10.h),
          Text(
            "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
            style: Styles.font14greye400w,
          ),
          SizedBox(height: 36.h),
          const SignupForm(),
          const SignupBlocListener()
        ],
      )),
    )));
  }
}

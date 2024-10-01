import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/app_regex.dart';
import '../../../../../../core/theme/widget/app_textformfield.dart';
import '../../controller/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

bool isShowed = false;

class _EmailAndPasswordState extends State<EmailAndPassword> {
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        children: [
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
            isShowPassword: isShowed,
            onPressedEye: () {
              setState(() {
                isShowed = !isShowed;
              });
            },
            validator: (value) {
              if (cubit.passwordController.text.isEmpty) {
                return "Not valid Password";
              }

              return null;
            },
          )
        ],
      ),
    );
  }
}

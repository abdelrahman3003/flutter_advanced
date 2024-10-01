import 'package:clinic_system/core/class/navigator.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_cubit.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constant/routes.dart';
import '../../../../../../core/theme/colors.dart';
import '../../../../../../core/theme/styles.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool? isLoading;
    var cubit = context.read<LoginCubit>();

    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        state.mapOrNull(
          loading: (value) {
            isLoading = true;
          },
          error: (error) {
            isLoading = false;
            Future.microtask(
              () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content:
                          Text(error.apiErrorModel.getallResponseMessage())),
                );
              },
            );
          },
          success: (value) {
            context.pop();
            context.pushNameed(Routes.kHomeView);
          },
        );
        return TextButton(
            onPressed: () {
              cubit.emitLoginStates();
            },
            style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize:
                    WidgetStateProperty.all(Size(double.infinity, 50.h)),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            child: isLoading != null && isLoading!
                ? const CircularProgressIndicator()
                : Text(
                    "Loading",
                    style: Styles.font16whitew600,
                  ));
      },
    );
  }
}

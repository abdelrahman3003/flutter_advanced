import 'package:clinic_system/core/class/navigator.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_cubit.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constant/routes.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
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
                  error.getallResponseMessage(),
                  style: Styles.font16whitew600.copyWith(color: AppColors.red),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text('GO it', style: Styles.font14blue400w),
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
    );
  }
}

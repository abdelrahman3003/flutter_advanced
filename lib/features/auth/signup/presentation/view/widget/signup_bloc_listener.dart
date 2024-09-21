import 'package:clinic_system/core/class/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/constant/dialogs.dart';
import '../../../../../../core/constant/routes.dart';
import '../../../../../../core/theme/colors.dart';
import '../../controller/cubit/signup_cubit.dart';
import '../../controller/cubit/signup_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
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
                builder: (context) =>
                    erroDialog(context, error.getallResponseMessage()));
          },
          success: (data) {
            context.pop();
            context.pushNameed(Routes.ksinginView);
          },
        );
      },
      child: Container(),
    );
  }
}

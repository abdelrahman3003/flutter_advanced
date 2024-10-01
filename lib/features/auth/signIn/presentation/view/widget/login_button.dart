import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theme/widget/app_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<LoginCubit>();
    return AppButton(
        text: "Login",
        onPressed: () {
          cubit.emitLoginStates();
        });
  }
}

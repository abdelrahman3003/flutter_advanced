import 'package:clinic_system/core/class/navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constant/routes.dart';
import '../../../../../../core/theme/styles.dart';

class AlreadyHsveAccount extends StatelessWidget {
  const AlreadyHsveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account yet? ', style: Styles.font14black400w),
        TextButton(
            onPressed: () {
              context.pushNameed(Routes.ksignupView);
            },
            child: Text('Sign Up ', style: Styles.font14blue400w)),
      ],
    );
  }
}
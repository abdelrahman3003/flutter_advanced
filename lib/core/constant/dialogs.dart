import 'package:clinic_system/core/class/navigator.dart';
import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/styles.dart';

Widget erroDialog(BuildContext context, String error) {
  return AlertDialog(
    icon: const Icon(
      Icons.error,
      color: AppColors.red,
      size: 32,
    ),
    content: Text(
      error,
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
  );
}

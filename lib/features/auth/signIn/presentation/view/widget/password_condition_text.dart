import 'package:clinic_system/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordConditionText extends StatelessWidget {
  const PasswordConditionText(
      {super.key, required this.text, required this.isValidate});
  final String text;
  final bool isValidate;
  @override
  Widget build(BuildContext context) {
    return Text(
      "•  $text",
      style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: isValidate ? Colors.green : AppColors.black,
          decoration: isValidate ? TextDecoration.lineThrough : null),
    );
  }
}

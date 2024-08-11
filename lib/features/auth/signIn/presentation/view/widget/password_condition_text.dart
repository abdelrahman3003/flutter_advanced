import 'package:clinic_system/core/theme/colors.dart';
import 'package:flutter/material.dart';

class PasswordConditionText extends StatelessWidget {
  const PasswordConditionText(
      {super.key, required this.text, required this.isValidate});
  final String text;
  final bool isValidate;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: isValidate ? Colors.green : AppColors.black,
          decoration: isValidate ? TextDecoration.lineThrough : null),
    );
  }
}

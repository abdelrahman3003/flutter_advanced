import 'package:flutter/material.dart';

import '../../../../../../core/theme/colors.dart';
import '../../../../../../core/theme/styles.dart';

class ForgetpasswordAndRemender extends StatefulWidget {
  const ForgetpasswordAndRemender({super.key});

  @override
  State<ForgetpasswordAndRemender> createState() =>
      _ForgetpasswordAndRemenderState();
}

bool isRemenderMe = false;

class _ForgetpasswordAndRemenderState extends State<ForgetpasswordAndRemender> {
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: Builder(builder: (context) {
            return Checkbox(
                activeColor: AppColors.primary,
                value: isRemenderMe,
                onChanged: (val) {
                  setState(() {
                    isRemenderMe = val!;
                  });
                });
          }),
        ),
        Text('Remember me', style: Styles.font14greye400w),
        const Spacer(),
        Text('Forgot Password?', style: Styles.font14blue400w),
      ],
    );
  }
}

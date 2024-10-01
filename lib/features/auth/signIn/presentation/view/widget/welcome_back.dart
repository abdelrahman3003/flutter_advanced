import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/styles.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome Back', style: Styles.font24blueBold),
        SizedBox(height: 10.h),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
          style: Styles.font14greye400w,
        ),
      ],
    );
  }
}
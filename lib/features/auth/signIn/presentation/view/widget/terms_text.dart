import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theme/colors.dart';
import '../../../../../../core/theme/styles.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Styles.font14greye400w
            .copyWith(height: 1.5.h, color: AppColors.grey),
        children: <TextSpan>[
          const TextSpan(text: 'By logging, you agree to our '),
          TextSpan(text: 'Terms & Conditions ', style: Styles.font14black400w),
          const TextSpan(text: 'and '),
          TextSpan(text: 'PrivacyPolicy.', style: Styles.font14black400w),
        ],
      ),
    );
  }
}

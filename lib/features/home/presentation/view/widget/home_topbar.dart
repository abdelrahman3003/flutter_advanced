import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/network/sharded_pref.dart';
import '../../../../../core/theme/colors.dart';
import '../../../../../core/theme/styles.dart';
import '../../../../../gen/assets.gen.dart';

class HomeTopbar extends StatelessWidget {
  const HomeTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Omar!",
                style: Styles.font18blackew700,
              ),
              Text(
                "How Are you Today?",
                style: Styles.font12greye400w,
              )
            ],
          ),
        ),
        SizedBox(
          height: 48.h,
          width: 48.w,
          child: CircleAvatar(
            backgroundColor: AppColors.grey4,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                InkWell(
                  onTap: () {
                    AppService.sharedPreferences.clear();
                  },
                  child: SvgPicture.asset(
                    Assets.icons.notification,
                  ),
                ),
                Positioned(
                  top: -1.7,
                  right: -2.2,
                  child: SvgPicture.asset(
                    Assets.icons.newNotfication,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

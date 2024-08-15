import 'package:clinic_system/core/theme/colors.dart';
import 'package:clinic_system/core/theme/styles.dart';
import 'package:clinic_system/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Omar!",
                      style: TextStyles.font18blackew700,
                    ),
                    Text(
                      "How Are you Today?",
                      style: TextStyles.font12greye400w,
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
                      SvgPicture.asset(
                        Assets.icons.notification,
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
          )
        ],
      ),
    )));
  }
}

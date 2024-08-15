import 'package:clinic_system/core/theme/colors.dart';
import 'package:clinic_system/core/theme/styles.dart';
import 'package:clinic_system/gen/assets.gen.dart';
import 'package:flutter/material.dart';
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
          ),
          SizedBox(height: 8.h),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 165.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.h,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                        image: AssetImage(Assets.images.background.path),
                        fit: BoxFit.cover)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Book and\nschedule with\nnearest doctor",
                      style: Styles.font18whiteew500,
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48.0),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 20.w)),
                      child: Text('Find Nearby',
                          style:
                              Styles.font14blue400w.copyWith(fontSize: 12.sp,)),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 8.w,
                bottom: 0,
                child: Image.asset(Assets.images.doc.path, height: 200.h),
              ),
            ],
          ),
        ],
      ),
    )));
  }
}

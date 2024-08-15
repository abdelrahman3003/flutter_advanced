import 'package:clinic_system/core/class/navigator.dart';
import 'package:clinic_system/core/constant/assets.dart';
import 'package:clinic_system/core/constant/routes.dart';
import 'package:clinic_system/core/theme/styles.dart';
import 'package:clinic_system/core/theme/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(IconAsset.logo, height: 38.h, width: 38.w),
              SizedBox(width: 10.w),
              SvgPicture.asset(IconAsset.docdocSvg, height: 18.h, width: 95.w),
            ],
          ),
          SizedBox(height: 40.h),
          Stack(
            children: [
              Image.asset(
                ImageAsset.onboardingBackground,
              ),
              Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
                child: Image.asset(ImageAsset.onboardingDoc),
              ),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    "Best Doctor Appointment App",
                    style: Styles.font32blueBold.copyWith(height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
              style: Styles.font12greye400w,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 40.h),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: AppButton(
                text: "Get Started",
                onPressed: () {
                  context.pushNameed(Routes.ksignupView);
                },
              ))
        ],
      ),
    )));
  }
}

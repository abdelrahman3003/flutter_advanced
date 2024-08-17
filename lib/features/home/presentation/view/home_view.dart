import 'package:clinic_system/core/class/navigator.dart';
import 'package:clinic_system/core/theme/colors.dart';
import 'package:clinic_system/core/theme/styles.dart';
import 'package:clinic_system/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:clinic_system/features/home/presentation/controller/cubit/home_state.dart';
import 'package:clinic_system/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/dialogs.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context,
                builder: (context) => const Center(
                        child: CircularProgressIndicator(
                      color: AppColors.primary,
                    )));
          },
          error: (error) {
            context.pop();
            showDialog(
                context: context,
                builder: (context) => erroDialog(context, error));
          },
          success: (data) {
            return const Text(" adddd");
          },
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 30.h),
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
                            style: Styles.font14blue400w.copyWith(
                              fontSize: 12.sp,
                            )),
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
            SizedBox(height: 20.h),
            Row(
              children: [
                Text("Doctor Speciality", style: Styles.font18blackew700),
                const Spacer(),
                Text("See All", style: Styles.font14blue400w)
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: CircleAvatar(
                        backgroundColor: AppColors.grey4,
                        radius: 30.h,
                        child: SvgPicture.asset(
                          Assets.icons.logo,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "General",
                      style: Styles.font14black400w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text("Recommendation Doctor", style: Styles.font18blackew700),
                const Spacer(),
                Text("See All", style: Styles.font14blue400w)
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 110.w,
                        height: 110.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage(
                                    Assets.images.docContainer.path))),
                      ),
                      SizedBox(width: 20.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr. Randy Wigham",
                              style: Styles.font18blackew700
                                  .copyWith(fontSize: 15.sp)),
                          SizedBox(height: 6.h),
                          Text("General | RSUD Gatot Subroto",
                              style: Styles.font14greye400w.copyWith(
                                  fontSize: 12.sp, color: AppColors.grey1)),
                          SizedBox(height: 6.h),
                          Row(
                            children: [
                              SvgPicture.asset(Assets.icons.magicStar),
                              Text(" 4.8 (4,279 reviews)",
                                  style: Styles.font14greye400w.copyWith(
                                      fontSize: 12.sp, color: AppColors.grey1)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    )));
  }
}

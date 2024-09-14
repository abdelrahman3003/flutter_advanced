import 'package:clinic_system/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecialityShimmerLoading extends StatelessWidget {
  const SpecialityShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                Shimmer.fromColors(
                  baseColor: AppColors.grey4,
                  highlightColor: Colors.white,
                  child: const CircleAvatar(radius: 28),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 100,
                  child: Shimmer.fromColors(
                      baseColor: AppColors.red,
                      highlightColor: Colors.black,
                      child: Container(
                        height: 10  .h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

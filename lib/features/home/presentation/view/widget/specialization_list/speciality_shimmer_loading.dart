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
                  baseColor: AppColors.grey2,
                  highlightColor: Colors.white,
                  child: CircleAvatar(radius: 30.h),
                ),
                SizedBox(height: 20.h),
                Shimmer.fromColors(
                    baseColor: AppColors.grey2,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 10.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}

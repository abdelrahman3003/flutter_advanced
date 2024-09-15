import 'package:clinic_system/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Shimmer.fromColors(
                  baseColor: AppColors.grey2,
                  highlightColor: AppColors.white,
                  child: Container(
                    width: 110.w,
                    height: 110.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.white,
                    ),
                  )),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                      baseColor: AppColors.grey2,
                      highlightColor: AppColors.white,
                      child: Container(
                        width: 80.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.white,
                        ),
                      )),
                  SizedBox(height: 15.h),
                  Shimmer.fromColors(
                      baseColor: AppColors.grey2,
                      highlightColor: AppColors.white,
                      child: Container(
                        width: 60.w,
                        height: 10.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.white,
                        ),
                      )),
                  SizedBox(height: 10.h),
                  Shimmer.fromColors(
                    baseColor: AppColors.grey3,
                    highlightColor: AppColors.white,
                    child: Container(
                      width: 60.w,
                      height: 10.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

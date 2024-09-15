import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_system/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/theme/colors.dart';
import '../../../../../../gen/assets.gen.dart';

class DoctorListItem extends StatelessWidget {
  const DoctorListItem(
      {super.key,
      required this.name,
      required this.image,
      required this.categoryName});
  final String name;
  final String categoryName;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 110.w,
          height: 110.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: CachedNetworkImageProvider(image ??
                    "https://images.pexels.com/photos/5327656/pexels-photo-5327656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              )),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: Styles.font18blackew700.copyWith(fontSize: 15.sp)),
            SizedBox(height: 6.h),
            Text(categoryName,
                style: Styles.font14greye400w
                    .copyWith(fontSize: 12.sp, color: AppColors.grey1)),
            SizedBox(height: 6.h),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.magicStar),
                Text(" 4.8 (4,279 reviews)",
                    style: Styles.font14greye400w
                        .copyWith(fontSize: 12.sp, color: AppColors.grey1)),
              ],
            )
          ],
        )
      ],
    );
  }
}

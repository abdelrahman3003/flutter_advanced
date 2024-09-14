import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/theme/colors.dart';
import '../../../../../../core/theme/styles.dart';

class SpecialityListItem extends StatelessWidget {
  const SpecialityListItem(
      {super.key,
      required this.title,
      required this.image,
      required this.isSelected,
      this.onTap});
  final String title;
  final String image;
  final bool isSelected;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: CircleAvatar(
            backgroundColor: isSelected ? AppColors.grey2 : AppColors.grey4,
            radius: 30.h,
            child: SvgPicture.asset(image),
          ),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          width: 100.w,
          child: Text(
            title,
            style: Styles.font14black400w,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctor_blue_container.dart';
import 'doctor_list/doctor_bloc_builder.dart';
import 'home_topbar.dart';
import 'specialization_list/speciality_bloc_builder.dart';
import 'title_see_all.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTopbar(),
        SizedBox(height: 30.h),
        const DoctorBlueContainer(),
        SizedBox(height: 20.h),
        const TitleSeeAll(title: "Doctor Speciality"),
        SizedBox(height: 20.h),
        const SpecialityBlocBuilder(),
        SizedBox(height: 20.h),
        const TitleSeeAll(title: "Recommendation Doctor"),
        SizedBox(height: 20.h),
        const DoctorBlocBuilder(),
      ],
    );
  }
}

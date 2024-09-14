import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/styles.dart';
import '../../../../../gen/assets.gen.dart';
import '../../controller/cubit/home_cubit.dart';

class DoctorBlueContainer extends StatelessWidget {
  const DoctorBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                onPressed: () {
                  context.read<HomeCubit>().fetchData();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48.0),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w)),
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
    );
  }
}

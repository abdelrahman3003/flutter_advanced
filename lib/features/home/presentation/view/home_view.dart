import 'package:clinic_system/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:clinic_system/features/home/presentation/controller/cubit/home_state.dart';
import 'package:clinic_system/features/home/presentation/view/widget/doctor_blue_container.dart';
import 'package:clinic_system/features/home/presentation/view/widget/doctor_list/doctor_bloc_builder.dart';
import 'package:clinic_system/features/home/presentation/view/widget/specialization_list/speciality_bloc_builder.dart';
import 'package:clinic_system/features/home/presentation/view/widget/home_topbar.dart';
import 'package:clinic_system/features/home/presentation/view/widget/title_see_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: BlocListener<HomeCubit, HomeState>(
        listenWhen: (previous, current) =>
            current is ConnectivityConnected ||
            current is ConnectivityDisconnected,
        listener: (context, state) {
          state.mapOrNull(
            connectivityDisconnected: (value) {
              context.read<HomeCubit>().showSnackbar(context, "Disconnected");
            },
            connectivityConnected: (value) {
              context.read<HomeCubit>().showSnackbar(context, "Connected");
            },
          );
        },
        child: Column(
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
        ),
      ),
    )));
  }
}

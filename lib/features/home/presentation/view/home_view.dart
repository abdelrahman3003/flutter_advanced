import 'package:clinic_system/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:clinic_system/features/home/presentation/controller/cubit/home_state.dart';
import 'package:clinic_system/features/home/presentation/view/widget/home_view_body.dart';
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
          child: const HomeViewBody()),
    )));
  }
}

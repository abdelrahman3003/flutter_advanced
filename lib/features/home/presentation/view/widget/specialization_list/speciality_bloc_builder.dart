import 'package:clinic_system/features/home/presentation/view/widget/specialization_list/speciality_list.dart';
import 'package:clinic_system/features/home/presentation/view/widget/specialization_list/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../controller/cubit/home_cubit.dart';
import '../../../controller/cubit/home_state.dart';

class SpecialityBlocBuilder extends StatelessWidget {
  const SpecialityBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current is Success,
      builder: (context, state) {
        return state.maybeWhen(
          success: (catergories, categoryid) {
            return SpecialityList(
                catergories: catergories, categorySelected: categoryid);
          },
          loading: () => const SpecialityShimmerLoading(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

import 'package:clinic_system/features/home/presentation/view/widget/doctor_list/doctors_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/cubit/home_cubit.dart';
import '../../../controller/cubit/home_state.dart';
import 'doctor_list.dart';

class DoctorBlocBuilder extends StatelessWidget {
  const DoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const DoctorsShimmerLoading(),
          success: (categories, categoryId) {
            return Expanded(
                child: DoctorList(
                    categories: categories, categorySelected: categoryId));
          },
          // error: (error) => erroDialog(context, error),

          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

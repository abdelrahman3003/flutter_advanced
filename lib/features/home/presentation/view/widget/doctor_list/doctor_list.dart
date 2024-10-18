import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/cubit/home_cubit.dart';
import 'doctor_list_item.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key, required this.doctorList});
  final List<Doctor?> doctorList;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<HomeCubit>();
    return ListView.builder(
      controller: cubit.scrollController,
      itemCount: cubit.doctorsList?.length ?? 0,
      itemBuilder: (context, index) {
        if (index == cubit.doctorsList!.length - 1 && cubit.isScrollMax) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return DoctorListItem(
            name: "${doctorList[index]?.name}",
            image: doctorList[index]?.photo,
            categoryName: "${doctorList[index]?.specialization?.name}",
          );
        }
      },
    );
  }
}

import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:clinic_system/features/home/presentation/view/widget/specialization_list/speciality_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../controller/cubit/home_cubit.dart';

class SpecialityList extends StatelessWidget {
  const SpecialityList(
      {super.key, required this.catergories, required this.categorySelected});
  final List<Category?>? catergories;
  final int categorySelected;
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<HomeCubit>();

    return SizedBox(
      height: 120.h,
      child: ListView.builder(
          itemCount: catergories?.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => SpecialityListItem(
                title: catergories?[index]?.name ?? "",
                image: Assets.icons.logo,
                isSelected: categorySelected == index,
                onTap: () {
                  cubit.changeCategory(index);
                },
              )),
    );
  }
}

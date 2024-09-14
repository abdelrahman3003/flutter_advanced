import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:clinic_system/features/home/presentation/view/widget/specialization_list/speciality_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../gen/assets.gen.dart';
import '../../../controller/cubit/home_cubit.dart';

class SpecialityList extends StatelessWidget {
  const SpecialityList({super.key, required this.catergories, required this.categorySelected});
  final Catergories catergories;
  final int categorySelected;
  @override
  Widget build(BuildContext context) {
    var cubit = context.read<HomeCubit>();

    return ListView.builder(
        itemCount: catergories.data?.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => SpecialityListItem(
              title: "${catergories.data?[index]?.name}",
              image: Assets.icons.logo,
              isSelected: categorySelected == index,
              onTap: () {
                cubit.changeCategory(index);
              },
            ));
  }
}

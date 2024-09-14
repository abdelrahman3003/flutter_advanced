import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:flutter/material.dart';

import 'doctor_list_item.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key, required this.categories, required this.categorySelected});
  final Catergories categories;
  final int categorySelected;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categories.data?[0]?.doctors?.length ?? 3,
        itemBuilder: (context, index) => DoctorListItem(
            name: "${categories.data?[categorySelected]?.name}",
            image: categories.data![categorySelected]?.doctors?[index]?.photo,
            categoryName: "${categories.data?[categorySelected]?.name}"));
  }
}

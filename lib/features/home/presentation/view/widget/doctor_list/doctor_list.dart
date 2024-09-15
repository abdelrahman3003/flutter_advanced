import 'package:clinic_system/features/home/data/model/doctor.dart';
import 'package:flutter/material.dart';

import 'doctor_list_item.dart';

class DoctorList extends StatelessWidget {
  const DoctorList(
      {super.key, required this.doctorList});
  final List<Doctor?> doctorList;
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollEndNotification &&
            notification.metrics.extentAfter == 0) {}
        return false;
      },
      child: ListView.builder(
        itemCount: doctorList.length,
        itemBuilder: (context, index) => DoctorListItem(
            name: "${doctorList[index]?.name}",
            image: doctorList[index]?.photo,
            categoryName: "${doctorList[index]?.specialization?.name}"),
      ),
    );
  }
}

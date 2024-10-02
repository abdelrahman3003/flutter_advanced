import 'package:clinic_system/clinic_app.dart';
import 'package:clinic_system/core/constant/dependecy_injection.dart';
import 'package:clinic_system/core/network/sharded_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'features/home/data/model/doctor.dart';

void main() async {
  // to fix hidden text bug in releas rub mod
  WidgetsFlutterBinding.ensureInitialized();
  await AppService.initializeSharedPreferences();
  await setupGetit();
  await ScreenUtil.ensureScreenSize();
  Hive.init((await getApplicationDocumentsDirectory()).path);
  Hive.registerAdapter(CategoryAdapter());  // Now this should work
  Hive.registerAdapter(DoctorAdapter());
  Hive.registerAdapter(SpecializationAdapter());
  Hive.registerAdapter(CityAdapter());

  await Hive.openBox<Category>('categories');
  await Hive.openBox<String>('image');
  runApp(const ClinicApp());
}

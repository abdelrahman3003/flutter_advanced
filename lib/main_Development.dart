import 'package:clinic_system/clinic_app.dart';
import 'package:clinic_system/core/constant/dependecy_injection.dart';
import 'package:clinic_system/core/network/sharded_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // to fix hidden text bug in releas rub mod
  WidgetsFlutterBinding.ensureInitialized();
  await AppService.initializeSharedPreferences();
  await setupGetit();
  await ScreenUtil.ensureScreenSize();

  runApp(const ClinicApp());
}

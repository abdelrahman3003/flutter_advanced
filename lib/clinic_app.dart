import 'package:clinic_system/core/constant/routes.dart';
import 'package:clinic_system/core/network/sharded_pref.dart';
import 'package:clinic_system/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClinicApp extends StatelessWidget {
  const ClinicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 821),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  side: BorderSide(
                      color: AppColors.grey2, // Border color
                      width: 2.w // Border width
                      ),
                ),
                primaryColor: AppColors.primary,
                scaffoldBackgroundColor: AppColors.white,
              ),
              onGenerateRoute: Routes.generateRoute,
              initialRoute: initRout());
        });
  }

  String initRout() {
    if (AppService.sharedPreferences.getString(ShardedPrefKey.step) == "1") {
      return Routes.ksinginView;
    }
    if (AppService.sharedPreferences.getString(ShardedPrefKey.step) == "2") {
      return Routes.kHomeView;
    }
   
    return Routes.konboardingView;
  }
}

import 'package:clinic_system/features/onboarding/view/onboarding_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String konboardingView = '/onboardingView';
  static const String klogin = '/login';
 static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const OnboardingView());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defind for ${setting.name}"),
            ),
          ),
        );
    }
  }
}

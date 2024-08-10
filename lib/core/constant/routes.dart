import 'package:clinic_system/features/auth/signIn/presentation/view/signIn_view.dart';
import 'package:clinic_system/features/onboarding/view/onboarding_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String konboardingView = '/onboardingView';
  static const String ksingin = '/singin';
  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const OnboardingView());
      case ksingin:
        return MaterialPageRoute(builder: (context) => const SigninView());
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

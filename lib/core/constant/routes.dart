import 'package:clinic_system/core/constant/dependecy_injection.dart';
import 'package:clinic_system/features/auth/signIn/presentation/controller/cubit/login_cubit.dart';
import 'package:clinic_system/features/auth/signup/presentation/controller/cubit/signup_cubit.dart';
import 'package:clinic_system/features/auth/signup/presentation/view/signup_view.dart';
import 'package:clinic_system/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:clinic_system/features/onboarding/view/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/signIn/presentation/view/signIn_view.dart';
import '../../features/home/presentation/view/home_view.dart';

class Routes {
  static const String konboardingView = '/onboardingView';
  static const String ksinginView = '/singinView';
  static const String ksignupView = '/signupView';
  static const String kHomeView = '/homepage';
  static Route generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case konboardingView:
        return MaterialPageRoute(builder: (context) => const OnboardingView());
      case ksignupView:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getit<SignupCubit>(),
                  child: const SignupView(),
                ));
      case ksinginView:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getit<LoginCubit>(),
                  child: const SigninView(),
                ));

      case kHomeView:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getit<HomeCubit>(),
                  child: const HomeView(),
                ));
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

import 'package:evently_app_c13_sun_4_pm/core/routes/pages_route_name.dart';
import 'package:evently_app_c13_sun_4_pm/modules/onBoarding/on_boarding_view.dart';
import 'package:evently_app_c13_sun_4_pm/modules/signIn/sign_in_view.dart';
import 'package:evently_app_c13_sun_4_pm/modules/splash/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Route onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteName.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );

      case PagesRouteName.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
          settings: settings,
        );

      case PagesRouteName.signIn:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}

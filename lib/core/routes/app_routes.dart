import 'dart:developer';

import 'package:evently_app_c13_sun_4_pm/core/routes/pages_route_name.dart';
import 'package:evently_app_c13_sun_4_pm/modules/create_event/create_event_screen.dart';
import 'package:evently_app_c13_sun_4_pm/modules/forgetPassword/forget_password_view.dart';
import 'package:evently_app_c13_sun_4_pm/modules/layout/layout_view.dart';
import 'package:evently_app_c13_sun_4_pm/modules/onBoarding/on_boarding_view.dart';
import 'package:evently_app_c13_sun_4_pm/modules/signIn/sign_in_view.dart';
import 'package:evently_app_c13_sun_4_pm/modules/signUp/sign_up_view.dart';
import 'package:evently_app_c13_sun_4_pm/modules/splash/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Route onGeneratedRoute(RouteSettings settings) {
    log('Route: ${settings.name}');
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

      case PagesRouteName.signUp:
        {
          return MaterialPageRoute(
            builder: (context) => const SignUpView(),
            settings: settings,
          );
        }

      case PagesRouteName.forgetPassword:
        {
          return MaterialPageRoute(
            builder: (context) => const ForgetPasswordView(),
            settings: settings,
          );
        }
      case PagesRouteName.layout:
        {
          return MaterialPageRoute(
            builder: (context) => const LayoutView(),
            settings: settings,
          );
        }
      case PagesRouteName.createEvent:
        {
          return MaterialPageRoute(
            builder: (context) => const CreateEventScreen(),
            settings: settings,
          );
        }
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}

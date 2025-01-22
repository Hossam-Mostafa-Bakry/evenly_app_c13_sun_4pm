import 'dart:async';
import 'dart:developer';

import 'package:evently_app_c13_sun_4_pm/core/constants/app_assets.dart';
import 'package:evently_app_c13_sun_4_pm/core/extensions/size_ext.dart';
import 'package:evently_app_c13_sun_4_pm/core/routes/pages_route_name.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          PagesRouteName.signIn,
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.eventlyLogo,
              height: 0.25.height,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:evently_app_c13_sun_4_pm/core/routes/app_routes.dart';
import 'package:flutter/material.dart';


/// 1- Localization (en, ar, es)
/// 2- Theme Mode
/// 3- state management (Provider) [Observer Design Patterns, Singleton Design Patterns ]



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGeneratedRoute,
    );
  }
}

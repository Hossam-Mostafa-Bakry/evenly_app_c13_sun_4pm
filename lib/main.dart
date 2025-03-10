import 'package:bot_toast/bot_toast.dart';
import 'package:evently_app_c13_sun_4_pm/core/routes/app_routes.dart';
import 'package:evently_app_c13_sun_4_pm/core/routes/pages_route_name.dart';
import 'package:evently_app_c13_sun_4_pm/core/services/loading_service.dart';
import 'package:evently_app_c13_sun_4_pm/core/theme/app_theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'firebase_options.dart';

/// 1- Localization (en, ar, es)
/// 2- Theme Mode
/// 3- state management (Provider) [Observer Design Patterns, Singleton Design Patterns ]

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());

  configLoading();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.lightTheme,
      onGenerateRoute: AppRoutes.onGeneratedRoute,
      navigatorKey: navigatorKey,
      builder: EasyLoading.init(
        builder: BotToastInit(),
      ),
    );
  }
}

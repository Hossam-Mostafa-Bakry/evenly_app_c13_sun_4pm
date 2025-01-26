import 'package:evently_app_c13_sun_4_pm/core/theme/color_palette.dart';
import 'package:flutter/material.dart';

abstract class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorPalette.white,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorPalette.white,
      centerTitle: true,

    ),
  );
}

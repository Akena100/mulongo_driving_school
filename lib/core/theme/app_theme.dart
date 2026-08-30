import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.orange,
      primary: AppColors.orange,
      secondary: AppColors.blue,
      background: AppColors.background,
    ),
    // Using default text theme for now to avoid web build issues with google_fonts.
    textTheme: ThemeData.light().textTheme,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.textPrimary,
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0F1419),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.orange,
      brightness: Brightness.dark,
    ),
    textTheme: ThemeData.dark().textTheme,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      foregroundColor: AppColors.textPrimary,
    ),
  );
}

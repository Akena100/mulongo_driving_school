import 'package:flutter/material.dart';

class AppColors {
  static const orange = Color(0xFFF97316);
  static const orangeDark = Color(0xFFEA580C);

  static const blue = Color(0xFF1565C0);
  static const blueDark = Color(0xFF0D47A1);
  static const blueLight = Color(0xFFE3F2FD);

  static const white = Color(0xFFFFFFFF);

  static const background = Color(0xFFF7F9FC);

  static const red = Color(0xFFE53935);
  static const redDark = Color(0xFFC62828);

  static const textPrimary = Color(0xFF172033);
  static const textSecondary = Color(0xFF5B6472);
  static const textMuted = Color(0xFF8A94A6);

  static const border = Color(0xFFE5E7EB);

  static const Color primary = Color(0xFF0066CC);
  static const Color secondary = Color(0xFF00AA33);
  static const Color accent = Color(0xFFFFB800);

  // Light Theme Colors

  static const Color black = Color(0xFF000000);
  static const Color darkGrey = Color(0xFF333333);
  static const Color mediumGrey = Color(0xFF666666);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color borderGrey = Color(0xFFE0E0E0);

  // Dark Theme - Backgrounds
  static const Color darkBg = Color(0xFF0F1419);
  static const Color darkCard = Color(0xFF1A2332);
  static const Color darkSurface = Color(0xFF252E3D);
  static const Color darkBorder = Color(0xFF3A4555);

  // Dark Theme - Text
  static const Color darkText = Color(0xFFE8EDF7);
  static const Color darkSecondaryText = Color(0xFFB0BAC9);

  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFFF6B6B);
  static const Color warning = Color(0xFFFFA500);
  static const Color info = Color(0xFF2196F3);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF0066CC), Color(0xFF0088FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [Color(0xFF00AA33), Color(0xFF00DD55)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

import 'package:flutter/material.dart';

class GoogleFonts {
  static TextStyle poppins({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontFamily: 'Poppins',
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      height: height,
    );
  }
}

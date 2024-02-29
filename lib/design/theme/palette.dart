import 'package:flutter/material.dart';

import 'color_helpers.dart';

class Palette {
  static const Color primary = Color(0xFF032541);
  static const Color primaryDark = Color(0xFF02192b);
  static const Color secondary = Color(0xFF1CB8D8);
  static const Color white = Colors.white;

  static const Color iconColor = Color(0xFF1D1B20);
  static const Color textColor = Color(0xFFF5F5F5);

  static const Color gray = Color(0xFFB5B5C3);
  static const Color attention = Colors.yellow;
  static const Color error = Color(0xFFE53E3E);
  static const Color success = Color(0xFF68D391);

  static MaterialColor materialPrimary = generateMaterialColor(const Color(0xFF032541));
  static MaterialColor materialSecondary = generateMaterialColor(const Color(0xFF1CB8D8));
  static MaterialColor materialAccent = generateMaterialColor(const Color(0xFF1CB8D8));

  static const Color labelColor = Color(0xFF1D1B20);
  static const Color iconInputColor = Color(0xFF1D1B20);
  static const Color inputTextColor = Color(0xFF1D1B20);
  static const Color inputBorderColor = Color(0xFFE3E3E3);
  static const Color inputBackground = Colors.white;
  static const Color filePickerBackground = Color(0xFFFAF9FB);
}

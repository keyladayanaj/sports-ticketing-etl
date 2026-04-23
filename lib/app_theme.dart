import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryLight = Color(0xFF1B5E20);
  static const Color onPrimaryLight = Color(0xFFFFFFFF);
  static const Color backgroundLight = Color(0xFFF1F8E9);
  static const Color onSurfaceLight = Color(0xFF1B5E20);

  static const Color primaryDark = Color(0xFF69F0AE);
  static const Color onPrimaryDark = Color(0xFF003300);
  static const Color backgroundDark = Color(0xFF0D0D0D);
  static const Color onSurfaceDark = Color(0xFFCFD8DC);

  static const ColorScheme lightColors = ColorScheme(
    brightness: Brightness.light,
    primary: primaryLight,
    onPrimary: onPrimaryLight,
    secondary: primaryLight,
    onSecondary: onPrimaryLight,
    error: Colors.red,
    onError: Colors.white,
    surface: backgroundLight,
    onSurface: onSurfaceLight,
    background: backgroundLight,
    onBackground: onSurfaceLight,
  );

  static const ColorScheme darkColors = ColorScheme(
    brightness: Brightness.dark,
    primary: primaryDark,
    onPrimary: onPrimaryDark,
    secondary: primaryDark,
    onSecondary: onPrimaryDark,
    error: Colors.redAccent,
    onError: Colors.black,
    surface: backgroundDark,
    onSurface: onSurfaceDark,
    background: backgroundDark,
    onBackground: onSurfaceDark,
  );

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColors,
    scaffoldBackgroundColor: backgroundLight,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: darkColors,
    scaffoldBackgroundColor: backgroundDark,
  );
}

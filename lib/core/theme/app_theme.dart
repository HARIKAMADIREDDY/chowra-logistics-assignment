import 'package:flutter/material.dart';

class AppTheme {
  // Brand colors matching standard logistics industry profiles
  static const Color primaryColor = Color(0xFF0A192F);
  static const Color secondaryColor = Color(0xFFFF6B00);
  static const Color scaffoldBackground = Color(0xFFF9FAFB);

  // Base theme configuration for the entire web app
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: primaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        secondary: secondaryColor,
      ),
      scaffoldBackgroundColor: scaffoldBackground,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

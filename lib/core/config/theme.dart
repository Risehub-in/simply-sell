import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_defaults.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData newTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Gilroy',
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      tertiary: AppColors.tertiary,
    ),

    // input decoration
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      fillColor: AppColors.textInputBackground,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 0.1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Gilroy',
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
    ),

    scaffoldBackgroundColor: Colors.white,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    ),

    // Text Theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
      titleMedium: TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        color: AppColors.textColor,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        color: AppColors.lightTextColor,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.textColor,
      ),
    ),

    // Input Decoration
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      fillColor: AppColors.textInputBackground,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 0.1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.1),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    ),

    // Floating Action Button
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: AppDefaults.borderRadius,
      ),
    ),

    // Button Theme
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: AppDefaults.borderRadius,
        ),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        // padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: AppDefaults.borderRadius,
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

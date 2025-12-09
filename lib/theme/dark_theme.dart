import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

// Конфигурация тёмной темы
final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark, // Тёмная палитра

  scaffoldBackgroundColor: AppColors.darkBackground,

  primaryColor: AppColors.primary,

  colorScheme: ColorScheme.dark(
    primary: AppColors.primary,
    surface: AppColors.darkBackground,
  ),

  // Текст в тёмной теме становится светлым
  textTheme: TextTheme(
    bodyMedium: AppTextStyles.body.copyWith(color: AppColors.darkText),
    titleLarge: AppTextStyles.title,
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF121212),
    foregroundColor: Colors.white,
    elevation: 0,
  ),
);

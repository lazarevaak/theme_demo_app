import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

// Конфигурация светлой темы
final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light, // Указываем тип темы

  // Цвет фона всего приложения
  scaffoldBackgroundColor: AppColors.lightBackground,

  // Основной цвет (primary)
  primaryColor: AppColors.primary,

  // Основные цвета Material
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
    surface: AppColors.lightBackground,
  ),

  // Цвета и стили текста для светлой темы
  textTheme: TextTheme(
    bodyMedium: AppTextStyles.body.copyWith(color: AppColors.lightText),
    titleLarge: AppTextStyles.title,
  ),

  // Оформление верхней панели приложения
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black87,
    elevation: 0,
  ),
);

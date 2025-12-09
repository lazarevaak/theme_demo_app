import 'package:flutter/material.dart';

// Глобальные стили текста для всего приложения
class AppTextStyles {
  // Стиль заголовков
  static const title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  // Основной текст (без цвета — цвет задаём в теме)
  static const body = TextStyle(
    fontSize: 16,
  );
}

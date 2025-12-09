import 'package:flutter/material.dart';

// Класс, управляющий темой приложения (Light / Dark)
class ThemeProvider extends ChangeNotifier {
  // Текущее состояние темы (по умолчанию — светлая)
  ThemeMode _themeMode = ThemeMode.light;

  // Геттер, чтобы получить текущее значение извне
  ThemeMode get themeMode => _themeMode;

  // Функция переключения темы
  void toggleTheme() {
    // Меняем тему на противоположную
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;

    // Уведомляем Flutter о том, что тема изменилась → UI перерисуется
    notifyListeners();
  }
}

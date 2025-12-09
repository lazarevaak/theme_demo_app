import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme/theme_provider.dart';
import 'theme/light_theme.dart';
import 'theme/dark_theme.dart';

import 'screens/home_screen.dart';

void main() {
  // Запуск приложения c подключением глобального ThemeProvider
  runApp(
    ChangeNotifierProvider(
      // Создаём экземпляр ThemeProvider, который будет доступен во всём приложении
      create: (_) => ThemeProvider(),
      child: const ThemeDemoApp(),
    ),
  );
}

class ThemeDemoApp extends StatelessWidget {
  const ThemeDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Получаем текущий режим темы (light / dark)
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Theme Demo App',

      // Указываем светлую тему
      theme: lightTheme,

      // Указываем тёмную тему
      darkTheme: darkTheme,

      // Указываем текущий режим темы (управляется ThemeProvider)
      themeMode: themeProvider.themeMode,

      // Главный экран
      home: const HomeScreen(),
    );
  }
}

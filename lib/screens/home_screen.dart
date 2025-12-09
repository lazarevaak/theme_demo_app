import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Получаем текущую тему
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Темы в Flutter"),

        actions: [
          // Кнопка переключения темы
          IconButton(
            icon: Icon(
              // Если сейчас светлая тема — показываем иконку "dark mode"
              themeProvider.themeMode == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),

            // Нажатие переключает тему
            onPressed: themeProvider.toggleTheme,
          ),
        ],
      ),

      // Основной контент
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),

          // Адаптивный цвет контейнера — зависит от темы
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),

          child: Text(
            "Это демо переключения тем",
            // Стиль текста меняется автоматически согласно теме
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}

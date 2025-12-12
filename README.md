# Theme Demo App — учебный проект для демонстрации систем темизации в Flutter 

Это демонстрационное приложение, показывающее, как правильно организовать систему тем (light/dark), глобальные цвета, текстовые стили и переключение темы в реальном времени с использованием Provider.

Приложение разработано специально для учебной презентации:

**[Смотреть презентацию в Figma]([https://github.com/lazarevaak/KotoTinder/releases/download/v1.0.2/app-release.apk](https://www.figma.com/slides/oaZ4DyxBD7ZQgCTSCh7A3y/%D0%94%D0%BE%D0%BA%D0%BB%D0%B0%D0%B4-%22%D0%A3%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D1%81%D1%82%D0%B8%D0%BB%D1%8F%D0%BC%D0%B8-%D0%B8-%D1%82%D0%B5%D0%BC%D0%B0%D0%BC%D0%B8-Flutter%22?node-id=1-133&t=xvOiv1dZdENBEqg5-1
))**

## Структура проекта

lib/

 ├─ main.dart
 
 ├─ screens/
 
 │    └─ home_screen.dart
 
 ├─ theme/
 
 │    ├─ app_colors.dart
 
 │    ├─ app_text_styles.dart
 
 │    ├─ light_theme.dart
 
 │    ├─ dark_theme.dart
 
 │    └─ theme_provider.dart
 

Что где находится:

- main.dart — подключение темы и Provider
- theme_provider.dart — переключение темы (light/dark)
- light_theme.dart / dark_theme.dart — объекты ThemeData
- app_colors.dart — глобальная палитра
- app_text_styles.dart — общие текстовые стили
- home_screen.dart — экран демонстрации с кнопкой переключения темы

## Запуск

```bash
flutter pub get
flutter run

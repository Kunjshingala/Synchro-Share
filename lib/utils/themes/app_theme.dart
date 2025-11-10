import 'package:flutter/material.dart';

import 'theme_extension.dart';

/// https://medium.com/@alexandersnotes/flutter-custom-theme-with-themeextension-792034106abc

extension ThemeGetter on BuildContext {
  ThemeData get theme => Theme.of(this);
}

class AppTheme with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  set themeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  static final lightTheme = ThemeData.light().copyWith(extensions: [_lightThemeExtension]);

  static final darkTheme = ThemeData.dark().copyWith(extensions: [_darkThemeExtension]);

  static final _lightThemeExtension = AppThemeExtension();

  static final _darkThemeExtension = AppThemeExtension();
}

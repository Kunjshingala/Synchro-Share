import 'package:flutter/material.dart';

import 'theme_extension.dart';

/// https://medium.com/@alexandersnotes/flutter-custom-theme-with-themeextension-792034106abc
///
/// Light : https://coolors.co/1f1c2c-928dab-ff6b6b-f8f8f8-e6e6eb
/// Dark : https://coolors.co/d3d1e8-7a7693-ff7b7b-111015-1a1821

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

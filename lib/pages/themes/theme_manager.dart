//Theme manager class

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './theme_constants.dart';

class ThemeManager with ChangeNotifier {
  static bool _isTheme = true;
  ThemeMode _themeMode = ThemeMode.dark;
  ThemeMode get currentTheme => ThemeMode.dark;

  void toggleTheme() {
    _isTheme = _isTheme;
  }

  get themeMode => _themeMode;

  static ThemeData get defaultTheme {
    return ThemeData();
  }
}

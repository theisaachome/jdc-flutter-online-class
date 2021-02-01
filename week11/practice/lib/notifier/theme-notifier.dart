import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.indigo,
    accentColor: Colors.pink,
    scaffoldBackgroundColor: Color(0xfff1f1f1));

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.indigo,
  accentColor: Colors.pink,
);

class ThemeNotifier extends ChangeNotifier {
  bool _isDarkTheme;
  String key = "themeValue";
  SharedPreferences prefers;

  ThemeNotifier() {
    _isDarkTheme = false;
    _fetchFromPrefers();
  }

  bool get isDarkTheme => _isDarkTheme;

  toggleTheme() {
    _isDarkTheme = !isDarkTheme;
    _saveToPrefers();
    notifyListeners();
  }

  _initPrefers() async {
    if (prefers == null) prefers = await SharedPreferences.getInstance();
  }

  _saveToPrefers() async {
    await _initPrefers();
    prefers.setBool(key, _isDarkTheme);
  }

  _fetchFromPrefers() async {
    await _initPrefers();
    _isDarkTheme = prefers.getBool(key) ?? _isDarkTheme;
    notifyListeners();
  }
}

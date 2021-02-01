import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FontNotifer extends ChangeNotifier {
  double _fontSize;

  String key = "fontSize";
  SharedPreferences prefers;

  get fontSize => _fontSize * 30;
  get sliderFontSize => _fontSize;

  FontNotifer() {
    _fontSize = 0.5;
    // initila data
    _fetchFromPrefers();
  }
  setFontSize(value) {
    _fontSize = value;
    _saveToPrefers();
    notifyListeners();
  }

  _initPrefers() async {
    if (prefers == null) prefers = await SharedPreferences.getInstance();
  }

  _saveToPrefers() async {
    await _initPrefers();
    prefers.setDouble(key, _fontSize);
  }

  _fetchFromPrefers() async {
    await _initPrefers();
    _fontSize = prefers.getDouble(key) ?? _fontSize;
    notifyListeners();
  }
}

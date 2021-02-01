import 'package:flutter/material.dart';

class CounterNotifier extends ChangeNotifier {
  int _count = 0;

  get count => _count;
  increment() {
    _count++;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

enum BottomNavMenu {
  Contact,
  Counter,
  Note,
}

extension BottomNavMenuExtension on BottomNavMenu {
  String get label {
    switch (this) {
      case BottomNavMenu.Contact:
        return "Contact";
        break;
      case BottomNavMenu.Counter:
        return "Counter";
        break;
      case BottomNavMenu.Note:
        return "Note";
        break;
      default:
        return null;
    }
  }

  IconData get icon {
    switch (this) {
      case BottomNavMenu.Contact:
        return Icons.contact_phone;
        break;
      case BottomNavMenu.Counter:
        return Icons.check;
        break;
      case BottomNavMenu.Note:
        return Icons.note;
        break;
      default:
        return null;
    }
  }
}

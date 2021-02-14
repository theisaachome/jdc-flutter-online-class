import 'package:flutter/material.dart';

enum BottomNavTab {
  books,
  orders,
  account,
}

extension BottomNavTabExtension on BottomNavTab {
  String get label {
    switch (this) {
      case BottomNavTab.books:
        return "BookStore";
        break;
      case BottomNavTab.orders:
        return "Orders";
        break;
      case BottomNavTab.account:
        return "Account";
        break;
      default:
        return null;
    }
  }

  IconData get icon {
    switch (this) {
      case BottomNavTab.books:
        return Icons.list;
        break;
      case BottomNavTab.orders:
        return Icons.shopping_bag;
        break;
      case BottomNavTab.account:
        return Icons.person_outlined;
        break;
      default:
        return null;
    }
  }
}

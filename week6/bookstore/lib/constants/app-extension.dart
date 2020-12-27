import 'package:bookstore/ui/enum/my-app-enum.dart';
import 'package:flutter/material.dart';

extension BottomNavMenuExtension on BottomNavMenu {
  // lable
  String get menuLabel {
    switch (this) {
      case BottomNavMenu.BookShelf:
        return "BookShelf";
        break;
      case BottomNavMenu.Blog:
        return "Blog";
        break;
      case BottomNavMenu.BookStore:
        return "Bookstore";
        break;
      case BottomNavMenu.Community:
        return "Community";
        break;
      default:
        return null;
    }
  }

  IconData get menuIcon {
    switch (this) {
      case BottomNavMenu.Blog:
        return Icons.list_alt;
        break;
      case BottomNavMenu.BookShelf:
        return Icons.library_books_outlined;
        break;
      case BottomNavMenu.BookStore:
        return Icons.store_mall_directory_sharp;
        break;
      case BottomNavMenu.Community:
        return Icons.group_work_outlined;
        break;
      default:
        return null;
    }
  }
}

extension TabBarMenuExtension on TabBarMenu {
  String get label {
    switch (this) {
      case TabBarMenu.Authors:
        return "Authors";
        break;
      case TabBarMenu.ForYou:
        return "For You";
        break;
      case TabBarMenu.Categories:
        return "Categories";
        break;
      case TabBarMenu.BestSellers:
        return "Best Sellers";
        break;
      default:
        return "404";
    }
  }
}

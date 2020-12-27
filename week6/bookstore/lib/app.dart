import 'package:bookstore/ui/enum/my-app-enum.dart';

import 'package:flutter/material.dart';
import './constants/app-extension.dart';
import './ui/pages/pages.dart';

class BookStore extends StatefulWidget {
  @override
  _BookStoreState createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  int _index = 0;
  List<Widget> pages = [
    BookShelfPage(),
    BookStorePage(),
    BlogPage(),
    CommunityPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (i) {
          setState(() {
            _index = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: BottomNavMenu.values
            .map((e) => BottomNavigationBarItem(
                  icon: Icon(e.menuIcon),
                  label: e.menuLabel,
                ))
            .toList(),
      ),
    );
  }
}

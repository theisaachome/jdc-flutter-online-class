import 'package:bookstore/src/core/presentation/enum/app-enum.dart';
import 'package:bookstore/src/core/presentation/screens/account/account.dart';
import 'package:bookstore/src/core/presentation/screens/book/books-screen.dart';
import 'package:bookstore/src/core/presentation/screens/order/order-screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  final List<Widget> pages = [
    BookScreen(),
    OrderScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: BottomNavTab.values
            .map<BottomNavigationBarItem>((tab) =>
                BottomNavigationBarItem(icon: Icon(tab.icon), label: tab.label))
            .toList(),
      ),
    );
  }
}

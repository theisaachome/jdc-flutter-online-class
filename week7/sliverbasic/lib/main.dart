import 'package:flutter/material.dart';
import 'package:sliverbasic/enum/app-enum.dart';
import 'package:sliverbasic/pages/collapsable-list.dart';
import 'package:sliverbasic/pages/profile-page.dart';
import 'package:sliverbasic/pages/sliver-appbar-page.dart';
import 'package:sliverbasic/pages/sliver-basic-page.dart';
import 'package:sliverbasic/pages/sliver-custom-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController pageController;
  int _index = 0;

  List<Widget> _pages = [
    SliverBasic(),
    SliverAppBarDemo(),
    SliverCustomDemo(),
    CollapsableList(),
    ProfilePage(),
  ];
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void onPageChange(i) {
    setState(() {
      print(i);
      _index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _pages,
        controller: pageController,
        onPageChanged: onPageChange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        onTap: (i) {
          setState(() {
            _index = i;
            pageController.jumpToPage(i);
          });
        },
        items: BottomNavMenu.values
            .map<BottomNavigationBarItem>((menu) => BottomNavigationBarItem(
                  icon: Icon(menu.menuIcon),
                  label: menu.menuLabel,
                ))
            .toList(),
      ),
    );
  }
}

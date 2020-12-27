import 'package:flutter/material.dart';
import 'package:tabbardemo/pages/game-page.dart';
import 'package:tabbardemo/pages/group-page.dart';
import 'package:tabbardemo/pages/home-page.dart';
import 'package:tabbardemo/pages/menu-page.dart';
import 'package:tabbardemo/pages/notification-page.dart';
import 'package:tabbardemo/pages/video-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          tabBarTheme: TabBarTheme(
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.grey,
      )),
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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 6, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.blue,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.group_outlined),
            ),
            Tab(
              icon: Icon(Icons.live_tv),
            ),
            Tab(
              icon: Icon(Icons.dashboard),
            ),
            Tab(
              icon: Icon(Icons.notifications),
            ),
            Tab(
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          HomePage(),
          GroupPage(),
          WatchPage(),
          GamePage(),
          NotificationPage(),
          MenuPage(),
        ],
      ),
    );
  }
}

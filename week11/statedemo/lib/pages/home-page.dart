import 'package:flutter/material.dart';
import 'package:statedemo/models/firend-model.dart';
import 'package:statedemo/pages/change-noti-demo.dart';
import 'package:statedemo/pages/consumer-demo.dart';
import 'package:statedemo/pages/provider-demo.dart';
import 'package:statedemo/pages/selector-demo.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final pages = <Widget>[
    ProviderDemo(),
    ChangeNotificationDemo(),
    ConsumerDemo(),
    SelectorDemo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (newIndex) {
          setState(() {
            _index = newIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Provider",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "ChangeNoti",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Consumer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Selector",
          ),
        ],
      ),
    );
  }
}

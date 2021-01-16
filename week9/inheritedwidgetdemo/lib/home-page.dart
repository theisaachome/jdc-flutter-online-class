import 'package:flutter/material.dart';
import 'package:inheritedwidgetdemo/enum/app-enum.dart';
import 'package:inheritedwidgetdemo/model/model.dart';
import 'package:inheritedwidgetdemo/pages/contact/contacts.dart';
import 'package:inheritedwidgetdemo/pages/counter/counter-page.dart';
import 'package:inheritedwidgetdemo/pages/note/note-page.dart';
import 'package:inheritedwidgetdemo/provider/counter-provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  final pages = <Widget>[
    ContactList(),
    StateContainer(child: CounterPage()),
    NotesList(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: BottomNavMenu.values
              .map((e) => BottomNavigationBarItem(
                    icon: Icon(e.icon),
                    label: e.label,
                  ))
              .toList()),
    );
  }
}

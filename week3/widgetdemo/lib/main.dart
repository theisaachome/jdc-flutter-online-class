import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:widgetdemo/column-demo.dart';
import 'package:widgetdemo/contianer-demo.dart';
import 'package:widgetdemo/layout-demo.dart';
import 'package:widgetdemo/row-demo.dart';
import 'package:widgetdemo/stateful-demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: Text("Column Demo"),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("StatelessDemo"),
        ),
        body: ColumnDemo());
  }
}

class MyFavCityWidget extends StatelessWidget {
  final String cityName;
  MyFavCityWidget({this.cityName = "No City"});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(cityName),
      ),
    );
  }
}

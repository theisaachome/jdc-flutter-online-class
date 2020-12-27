import 'package:flutter/material.dart';
import 'package:navdemo/ui/pages/employe-page.dart';
import 'package:navdemo/ui/pages/my-home-page.dart';
import 'package:navdemo/ui/pages/product-list.dart';
import 'package:navdemo/ui/pages/setting-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        MyHomePage.routeName: (c) => MyHomePage(title: "Home Page"),
        SettingPages.routeName: (c) => SettingPages(),
        ProductList.routeName: (c) => ProductList(),
        EmployeePage.routeName: (c) => EmployeePage(),
      },
      initialRoute: MyHomePage.routeName,
    );
  }
}

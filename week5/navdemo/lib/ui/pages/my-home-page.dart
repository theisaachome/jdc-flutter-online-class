import 'package:flutter/material.dart';
import 'package:navdemo/ui/data.dart';
import 'package:navdemo/ui/pages/employe-page.dart';
import 'package:navdemo/ui/pages/product-list.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = "/home";
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, "/setting-page");
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ProductList.routeName);
              },
              child: Text("View Product"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  EmployeePage.routeName,
                  arguments: Employee(id: "EMP-009-098", phone: "0909878767"),
                );
              },
              child: Text("View Info"),
            ),
          ],
        ),
      ),
    );
  }
}

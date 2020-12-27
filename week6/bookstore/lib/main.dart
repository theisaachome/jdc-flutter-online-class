import 'package:bookstore/app.dart';
import 'package:bookstore/ui/styles/app-theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: myAppTheme(),
      home: BookStore(),
    );
  }
}

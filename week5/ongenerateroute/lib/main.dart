import 'package:flutter/material.dart';
import 'package:ongenerateroute/app-route.dart';
import 'package:ongenerateroute/pages/home-page.dart';

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
      initialRoute: MyHomePage.routeName,
      onGenerateRoute: MyAppRoute.generateRoute,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travellapp/presentation/screen/detail-screen.dart';
import 'package:travellapp/presentation/screen/home-screen.dart';
import 'package:travellapp/presentation/screen/welcome-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      home: WelcomeScreen(),
      initialRoute: "/welcome-screen",
      debugShowCheckedModeBanner: false,
      routes: {
        WelcomeScreen.routeName: (c) => WelcomeScreen(),
        HomeScreen.routeName: (c) => HomeScreen(),
        DetailScreen.routeName: (c) => DetailScreen()
      },
    );
  }
}

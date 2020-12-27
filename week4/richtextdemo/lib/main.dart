import 'package:flutter/material.dart';
import 'package:richtextdemo/presentation/screens/welcome-screen.dart';
import './presentation/screens/screens.dart';

void main() {
  runApp(ChannelSevenApp());
}

class ChannelSevenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

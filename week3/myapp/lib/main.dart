import 'package:flutter/material.dart';
import 'package:myapp/scaffold-demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Icon(Icons.menu),
                  Spacer(),
                  Icon(Icons.search),
                  Icon(Icons.message),
                ],
              ),
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.orange,
            ),
            Container(
              width: 200,
              height: 150,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

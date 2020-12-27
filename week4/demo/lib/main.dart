import 'package:demo/news/pages/news-app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsHomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        decoration: BoxDecoration(border: Border.all()),
        height: 200,
        child: Text(
          news,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoSlab',
            fontStyle: FontStyle.italic,
            color: Colors.deepOrange,
          ),
          // maxLines: 5,
          overflow: TextOverflow.visible,
          semanticsLabel: "News Text",
          textAlign: TextAlign.left,
          // textDirection: TextDirection.rtl,
        ),
      )),
    );
  }
}

const news =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

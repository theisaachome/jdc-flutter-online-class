import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:practice/notifier/fonts-notifier.dart';
import 'package:practice/widgets/app-drawer.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = loremIpsum(paragraphs: 3, words: 100, initWithLorem: true);
  @override
  Widget build(BuildContext context) {
    final fontProvider = context.watch<FontNotifer>();
    // final fontProvider = Provider.of<FontNotifer>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily News"),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
              text,
              style: TextStyle(fontSize: fontProvider.fontSize),
            )),
      ),
      drawer: AppDrawer(),
    );
  }
}

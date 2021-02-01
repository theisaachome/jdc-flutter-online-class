import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:practice/notifier/fonts-notifier.dart';
import 'package:practice/screens/home.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  final String text =
      loremIpsum(paragraphs: 3, words: 100, initWithLorem: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (c) => MyHomePage()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text("About Us"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Consumer<FontNotifer>(
            builder: (context, notifier, child) {
              return Text(
                text,
                style: TextStyle(fontSize: notifier.fontSize),
              );
            },
          ),
        ),
      ),
    );
  }
}

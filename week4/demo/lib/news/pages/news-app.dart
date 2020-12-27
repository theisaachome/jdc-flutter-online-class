import 'package:demo/news/widgets/news-item-widget.dart';
import 'package:flutter/material.dart';
import '../model/article.dart';

class NewsHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (var a = 0; a < 15; a++) NewsItemWidget(article: news)
            ],
          ),
        ));
  }
}

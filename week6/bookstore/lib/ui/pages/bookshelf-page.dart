import 'package:bookstore/ui/widgets/my-app-bar.dart';
import 'package:bookstore/ui/widgets/my-book-widget.dart';
import 'package:bookstore/ui/widgets/white-list-book-widget.dart';
import 'package:flutter/material.dart';

class BookShelfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: ListView(
        children: [
          MyBookWidget(),
          WishListWidget(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sliverbasic/my-slivers.dart';

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: true,
            leading: Icon(Icons.arrow_back_ios),
            actions: [
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
            ],
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text("Lunch Meal"),
              titlePadding: EdgeInsets.all(20),
              background: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
                ),
              ),
            ),
          ),
          dynamicList(),
          staticExtentGrid(),
        ],
      ),
    );
  }
}

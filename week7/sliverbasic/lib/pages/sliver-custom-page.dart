import 'package:flutter/material.dart';
import 'package:sliverbasic/my-slivers.dart';

class SliverCustomDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(pinned: true, delegate: MyCustomAppBar()),
          staticList(),
        ],
      ),
    );
  }
}

class MyCustomAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=953&q=80",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 18,
          left: 16,
          child: Text("Our Meal"),
        ),
      ],
    );
  }

  @override
  double get maxExtent => 300;

  @override
  double get minExtent => 75;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

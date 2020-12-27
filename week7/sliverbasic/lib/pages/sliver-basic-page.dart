import 'package:flutter/material.dart';
import 'package:sliverbasic/my-slivers.dart';

class SliverBasic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPadding(padding: EdgeInsets.only(top: 80)),
        makeLabel("Static List"),
        staticList(),
        makeLabel("Fixed Extent List"),
        fixedExtentList(),
        makeLabel("Dynamic List"),
        dynamicList(),
        makeLabel("Grid List"),
        staticGrid(),
        makeLabel("Fixed Extent Grid List"),
        staticExtentGrid(),
        SliverPadding(padding: EdgeInsets.only(bottom: 80)),
      ],
    ));
  }

  Widget makeLabel(String title) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

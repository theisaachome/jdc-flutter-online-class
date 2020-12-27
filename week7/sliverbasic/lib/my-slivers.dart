import 'dart:math';
import 'package:flutter/material.dart';

List<Widget> listContainer({double height}) => List.generate(
    8,
    (index) => Container(
          color: Color(Random().nextInt(0xff000070)),
          height: height ?? 100,
        ));

staticList() {
  return SliverList(
    delegate: SliverChildListDelegate(listContainer()),
  );
}

fixedExtentList() {
  return SliverFixedExtentList(
    delegate: SliverChildListDelegate(listContainer()),
    itemExtent: 100,
  );
}

dynamicList() {
  return SliverList(
    delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return Container(
        height: 150,
        alignment: Alignment.center,
        color: Color(Random().nextInt(0xff000070)),
        child: Text(
          "$index",
          style: TextStyle(fontSize: 30),
        ),
      );
    }, childCount: 10),
  );
}

staticGrid() {
  return SliverGrid(
      delegate: SliverChildListDelegate(
        listContainer(),
      ),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3));
}

staticExtentGrid() {
  return SliverGrid(
    delegate: SliverChildListDelegate(
      listContainer(),
    ),
    gridDelegate:
        SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
  );
}

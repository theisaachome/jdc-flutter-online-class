import 'package:flutter/material.dart';

class MyBoxWidget extends StatelessWidget {
  final double width;
  final double height;
  const MyBoxWidget({Key key, this.width, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

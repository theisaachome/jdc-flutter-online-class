import 'package:flutter/material.dart';

class PlaceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(right: 10),
      color: Colors.blue,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 200,
      ),
    );
  }
}

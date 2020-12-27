import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 16,
      ),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.grey[300],
          border: Border.all(color: Colors.grey[100]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 2,
              spreadRadius: 2.0,
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Text("Search for Trips"),
          Spacer(),
          Icon(Icons.tune),
        ],
      ),
    );
  }
}

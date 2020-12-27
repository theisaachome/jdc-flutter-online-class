import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18, horizontal: 26),
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[200], blurRadius: 2, offset: Offset(0, 3)),
          BoxShadow(
              color: Colors.grey[300], blurRadius: 2, offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.blueGrey,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "Search for a trip",
            style: TextStyle(
                color: Colors.blueGrey, fontSize: 14, letterSpacing: 0.4),
          ),
          Spacer(),
          Icon(
            Icons.tune,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}

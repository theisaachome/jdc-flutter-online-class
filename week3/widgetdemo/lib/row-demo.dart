import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              children: [
                getMyContainer(),
                getMyContainer(),
                getMyContainer(),
                getMyContainer(),
                getMyContainer(),
                getMyContainer(),
                getMyContainer(),
                getMyContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getMyContainer({double h = 60, double w = 60}) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black12,
      ),
      child: Container(
        height: h,
        width: h,
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.orangeAccent,
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1485727749690-d091e8284ef3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1100&q=80")),
        ),
      ),
    );
  }
}

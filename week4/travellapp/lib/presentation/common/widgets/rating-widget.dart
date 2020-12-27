import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int rating;
  final int startLenth = 5;

  const RatingWidget({Key key, this.rating}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          for (var i = 0; i < rating; i++)
            Icon(
              Icons.star,
              size: 18,
              color: Colors.orange,
            )
        ],
      ),
    );
  }
}

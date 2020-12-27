import 'package:bookstore/ui/styles/app-style.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyBookWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Books",
            style: appTitle,
          ),
          SizedBox(
            height: 18,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, index) => _BookItemWidget()),
          ),
        ],
      ),
    );
  }
}

class _BookItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      margin: EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            "https://images-na.ssl-images-amazon.com/images/I/51H8DtU-WTL._SX379_BO1,204,203,200_.jpg",
            scale: 2.3,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "Learning PHP, MySQL & JavaScript: With jQuery, CSS & HTML5",
            style: bookTitleStyle,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LinearPercentIndicator(
                width: 120.0,
                lineHeight: 5.0,
                percent: 1,
                backgroundColor: Colors.grey,
                progressColor: Colors.orange,
              ),
              Text("100%")
            ],
          )
        ],
      ),
    );
  }
}

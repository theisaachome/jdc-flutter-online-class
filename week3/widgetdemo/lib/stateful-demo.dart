import 'package:flutter/material.dart';

class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter({this.name = "No Name"});

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              count++;
            });
            print(count);
          },
          child: Text(
            "${widget.name} Count : $count",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

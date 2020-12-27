import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(),
                borderRadius: BorderRadius.circular(30)),
            child: Text("Border Decorated  Container"),
          ),
          Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orangeAccent,
            ),
          ),
          Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Container(
              height: 120,
              width: 350,
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orangeAccent,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1485727749690-d091e8284ef3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1100&q=80")),
              ),
            ),
          ),
          Container(
            height: 120,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.grey,
              boxShadow: [
                BoxShadow(
                  color: Colors.green,
                  offset: Offset(0, 0),
                  blurRadius: 2,
                  spreadRadius: 10,
                ),
                BoxShadow(
                  color: Colors.orange,
                  offset: Offset(0, 2),
                  blurRadius: 5,
                  spreadRadius: 10,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 120,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.grey,
              gradient: LinearGradient(
                colors: [
                  Colors.green,
                  Colors.orange,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

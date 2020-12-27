import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.symmetric(vertical: 10),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text("Create Room"),
                getMyContainer(),
                getMyContainer(),
                getMyContainer(),
              ],
            ),
          ),
        ),
        // SizedBox(
        //   height: 4,
        // ),
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(top: 8, bottom: 8),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StoryWidget(color: Colors.blue),
                StoryWidget(color: Colors.orange[500]),
                StoryWidget(color: Colors.blueGrey),
                StoryWidget(color: Colors.yellow),
                StoryWidget(color: Colors.orange[500]),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getMyContainer({double h = 60, double w = 60}) {
    return Container(
      margin: EdgeInsets.only(right: 8),
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

class StoryWidget extends StatelessWidget {
  final Color color;
  const StoryWidget({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 180,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Today"),
      ),
      body: ListView.builder(
          itemCount: 500,
          itemBuilder: (c, index) {
            return Card(
              child: ListTile(
                leading: Container(
                  width: 100,
                  height: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageUrl),
                  )),
                ),
                title: Text("Lorem Ipsum $index"),
                subtitle: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
              ),
            );
          }),
    );
  }
}

const imageUrl =
    "https://c8.alamy.com/comp/P2CP0N/breaking-news-logo-live-bannertv-news-mass-media-design-vector-illustration-P2CP0N.jpg";

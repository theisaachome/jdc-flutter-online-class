import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = "/profile-page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          _buildContent(context),
          _buildContent(context),
          _buildContent(context),
          _buildContent(context),
          _buildContent(context),
          _buildContent(context),
          _buildContent(context),
          ListTile(
            leading: CircleAvatar(),
            title: Text("List Titile"),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            trailing: Icon(Icons.star),
          ),
        ],
      ),
    ));
  }

  Widget _buildContent(BuildContext context) {
    return Card(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Men Corner",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
          ]),
    );
  }
}

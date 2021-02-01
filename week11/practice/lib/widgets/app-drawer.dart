import 'package:flutter/material.dart';
import 'package:practice/screens/about.dart';
import 'package:practice/screens/setting.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(),
            accountName: Text("isac"),
            accountEmail: Text("isaacehome@outlook.com"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => Setting()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (c) => About()));
            },
          )
        ],
      ),
    );
  }
}

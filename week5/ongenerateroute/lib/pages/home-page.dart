import 'package:flutter/material.dart';
import 'package:ongenerateroute/pages/profile-page.dart';
import 'package:ongenerateroute/pages/search-page.dart';
import 'package:ongenerateroute/pages/setting-page.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = "/home";
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(SearchPage.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(ProfilePage.routeName);
              },
              child: Icon(Icons.person),
            ),
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).pushNamed(SettingPage.routeName);
                }),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(),
                  accountName: Text("isaachome"),
                  accountEmail: Text("isaachome@gmail.com"),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.shopping_bag,
                ),
                title: Text("My Cart"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
        body: ListView.separated(
          itemCount: 200,
          separatorBuilder: (c, index) => Divider(
            color: Colors.grey,
          ),
          itemBuilder: (c, index) {
            print(index);
            return ListTile(
              title: Text("Today News $index"),
              subtitle: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. "),
            );
          },
        ));
  }
}

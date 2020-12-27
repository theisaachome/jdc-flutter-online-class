import 'package:bookstore/ui/enum/my-app-enum.dart';
import 'package:bookstore/ui/widgets/my-app-bar.dart';
import 'package:flutter/material.dart';
import '../../constants/app-extension.dart';

class BookStorePage extends StatefulWidget {
  @override
  _BookStorePageState createState() => _BookStorePageState();
}

class _BookStorePageState extends State<BookStorePage>
    with TickerProviderStateMixin {
  TabController _controller;

  List<Widget> pages = [
    _BookStoreHomePage(),
    Container(
      child: Text(""),
    ),
    Container(
      child: Text(""),
    ),
    Container(
      child: Text(""),
    ),
  ];
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: TabBarMenu.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(
          tabBar: TabBar(
        isScrollable: true,
        indicatorColor: Colors.teal,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: TabBarMenu.values.map((e) => Text(e.label)).toList(),
        controller: _controller,
      )),
      body: TabBarView(
        children: pages,
        controller: _controller,
      ),
    );
  }
}

class _BookStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            color: Colors.amber,
          ),
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height,
          )
        ],
      ),
    );
  }
}

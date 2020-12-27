import 'package:flutter/material.dart';
import 'package:sliverbasic/my-slivers.dart';

class MyTabbar {
  String title;
  Widget child;
  MyTabbar({this.title, this.child});
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  String currentShop;

  List<MyTabbar> pages = [
    MyTabbar(title: "KFC", child: KFC()),
    MyTabbar(title: "Lotteria", child: Lotteria()),
    MyTabbar(title: "Mary Brown", child: MaryBrown()),
  ];
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: pages.length, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text(pages[tabController.index].title),
              titlePadding: EdgeInsets.all(20),
              background: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80",
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: MyCustomAppBar(
              tabbar: TabBar(
                controller: tabController,
                tabs: pages
                    .map<Tab>((e) => Tab(
                          text: e.title,
                        ))
                    .toList(),
              ),
              color: Colors.black,
            ),
          )
        ];
      },
      body: TabBarView(
        controller: tabController,
        children: pages.map((e) => e.child).toList(),
      ),
    ));
  }
}

class MyCustomAppBar extends SliverPersistentHeaderDelegate {
  final TabBar tabbar;
  final Color color;

  MyCustomAppBar({this.tabbar, this.color});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: tabbar,
      color: color,
    );
  }

  @override
  double get maxExtent => tabbar.preferredSize.height;

  @override
  double get minExtent => tabbar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class KFC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        staticList(),
        staticGrid(),
      ],
    );
  }
}

class Lotteria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Lotteria"),
    );
  }
}

class MaryBrown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Mary Brown"),
    );
  }
}

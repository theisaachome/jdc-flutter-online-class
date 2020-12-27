import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _sliverAppBar(context),
          //static Sliver List
          SliverList(delegate: mySliverList()),

          // dyanmic Sliver List
          SliverList(delegate: mySliverBuilderList(context)),

          // Sliver grid
          SliverGrid(
            delegate: mySliverBuilderList(context),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 4,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
          ),

          SliverFixedExtentList(
            itemExtent: 150.0,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.red),
                Container(color: Colors.purple),
                Container(color: Colors.green),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.pink),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sliverAppBar(context) {
    return SliverAppBar(
      backgroundColor: Colors.white10,
      expandedHeight: 250,
      floating: true,
      leading: Icon(Icons.arrow_back_ios),
      actions: [Icon(Icons.more_vert)],
      flexibleSpace: Image.network(
        "https://images.unsplash.com/photo-1527692282582-538da08c9d00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=664&q=80",
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

mySliverList() {
  return SliverChildListDelegate([
    Container(color: Colors.red, height: 150.0),
    Container(color: Colors.purple, height: 150.0),
    Container(color: Colors.green, height: 150.0),
  ]);
}

mySliverBuilderList(context) {
  return SliverChildBuilderDelegate(
    (context, index) {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(4),
        height: 150,
        color: Colors.teal[100 * (index % 9)],
        child: Text(
          "List One ${index + 1}",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    },
    childCount: 12,
  );
}

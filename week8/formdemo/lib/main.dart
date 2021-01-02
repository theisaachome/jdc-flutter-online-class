import 'package:flutter/material.dart';
import 'package:formdemo/add-form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (c) => AddForm()));
                  })
            ],
          ),
          SliverList(delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return null;
          }))
        ],
      ),
    );
  }
}

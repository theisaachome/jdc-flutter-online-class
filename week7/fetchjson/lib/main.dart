import 'package:fetchjson/api-client.dart';
import 'package:fetchjson/model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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
  Future<List<Post>> posts;

  @override
  void initState() {
    super.initState();
    posts = fetchPosts();
    print(posts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder(
          future: posts,
          builder: (context, snapshot) {
            // print(snapshot.data);

            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (c, index) {
                    return ListTile(
                      title: Text(snapshot.data[index].title),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text("error Occure");
            }
            return CircularProgressIndicator();
          },
        ));
  }
}

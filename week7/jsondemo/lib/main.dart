import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
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
  // Future<PostModel> postModel;
  // Future<FriendModel> friendModel;
  // Future<ContactModel> contactModel;
  // Future<ProductModel> productModel;
  // Future<PhotoList> photoList;

  @override
  void initState() {
    // photoList = loadPhotoData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center());
  }
}

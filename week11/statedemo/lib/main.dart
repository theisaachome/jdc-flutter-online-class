import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statedemo/notifers/Counter-notifier.dart';
import 'package:statedemo/notifers/friend-notifier.dart';
import 'package:statedemo/notifers/wish-notifier.dart';
import 'package:statedemo/pages/home-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => FriendList()),
        ChangeNotifierProvider(create: (c) => WishNotifier()),
        ChangeNotifierProvider(create: (c) => CounterNotifier()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

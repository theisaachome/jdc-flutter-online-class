import 'package:flutter/material.dart';
import 'package:practice/notifier/fonts-notifier.dart';
import 'package:practice/notifier/theme-notifier.dart';
import 'package:practice/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (c) => FontNotifer()),
        ChangeNotifierProvider(create: (c) => ThemeNotifier()),
      ],
      child: Consumer<ThemeNotifier>(
        builder: (context, notifier, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: notifier.isDarkTheme ? dark : light,
            home: MyHomePage(),
          );
        },
      ),
    );
  }
}

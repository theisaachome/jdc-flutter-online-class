import 'package:bookstore/src/core/presentation/app-route/app-routes.dart';
import 'package:bookstore/src/core/presentation/providers/book-provider.dart';
import 'package:bookstore/src/core/presentation/screens/book/book-detail-screen.dart';
import 'package:bookstore/src/core/presentation/screens/home-screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (c) => BookProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        routes: {
          AppRoute.home: (context) => HomeScreen(),
          AppRoute.detail: (context) => BookDetailScreen()
        },
      ),
    );
  }
}

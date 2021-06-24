import 'package:bookstore/src/core/presentation/app-route/app-routes.dart';
import 'package:bookstore/src/core/presentation/screens/book/books-widget.dart';
import 'package:bookstore/src/core/presentation/screens/cart/shopping-cart-screen.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Today BookStore"),
          centerTitle: false,
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoute.cart);
                })
          ],
        ),
        body: BookList());
  }
}

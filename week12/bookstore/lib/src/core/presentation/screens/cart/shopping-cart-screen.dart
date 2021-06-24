import 'package:bookstore/src/core/presentation/providers/cart-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoppingCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
      ),
      body: cartProvider.items.length > 0
          ? Container(
              child: Text("Your Item"),
            )
          : Container(
              child: Center(
                child: Text(
                  "You Have No Order Yet",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
    );
  }
}

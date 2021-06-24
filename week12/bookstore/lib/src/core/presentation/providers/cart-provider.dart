import 'package:bookstore/src/core/presentation/models/cart-item-model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  Map<String, CartItemModel> _items = {};
  // get Items
  Map<String, CartItemModel> get items => {..._items};

  // itemCount
  int get itemCounts => _items.length;
  // add Item to carts
  void addItem(
    String bookId,
    String title,
    double price,
  ) {
    if (_items.containsKey(bookId)) {
      _items.update(
          bookId,
          (oldBook) => CartItemModel(
                id: oldBook.id,
                title: oldBook.title,
                price: oldBook.price,
                quantity: oldBook.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
          bookId,
          () => CartItemModel(
                id: DateTime.now().toString(),
                price: price,
                quantity: 1,
                title: title,
              ));
    }
    notifyListeners();
  }
  // clear carts

}

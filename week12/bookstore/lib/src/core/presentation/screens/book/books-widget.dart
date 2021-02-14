import 'package:bookstore/src/core/presentation/providers/book-provider.dart';
import 'package:bookstore/src/core/presentation/screens/book/book-item-widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bookProvider = Provider.of<BookProvider>(context);
    return ListView.builder(
        itemCount: bookProvider.books.length,
        itemBuilder: (c, index) {
          final _book = bookProvider.books[index];
          return BookItem(
            id: _book.id,
            imageUrl: _book.imageUrl,
            author: _book.author,
            description: _book.description,
            price: _book.price,
            title: _book.title,
          );
        });
  }
}

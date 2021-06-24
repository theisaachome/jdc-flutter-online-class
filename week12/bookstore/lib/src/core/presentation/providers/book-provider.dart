import 'package:bookstore/src/core/presentation/models/book-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

String description = lorem(
  words: 150,
  paragraphs: 1,
);
String longDesc = lorem(words: 150, paragraphs: 3);
final imageUrl =
    "https://s3.amazonaws.com/stackabuse/media/the-best-java-books-all-skill-levels-12.jpg";

class BookProvider extends ChangeNotifier {
  List<BookModel> _list = [
    BookModel(
      author: "John MacWell",
      id: "1",
      description: description,
      longDescription: longDesc,
      price: 19.0,
      releaseYear: 2021,
      title: "Flutter In Deep Dive",
      imageUrl: imageUrl,
    ),
    BookModel(
      author: "James Brown",
      id: "2",
      description: description,
      longDescription: longDesc,
      price: 29.99,
      releaseYear: 2020,
      title: "Mastering Java 11 ",
      imageUrl: imageUrl,
    ),
    BookModel(
      author: "Herbbert Sabbath",
      id: "3",
      description: description,
      longDescription: longDesc,
      price: 29.99,
      releaseYear: 2020,
      title: "Java A Beginner's Guide ",
      imageUrl: imageUrl,
    ),
    BookModel(
      author: "Herbbert Sabbath",
      id: "4",
      description: description,
      longDescription: longDesc,
      price: 29.99,
      releaseYear: 2020,
      title: "Enchaned Java 11",
      imageUrl: imageUrl,
    ),
    BookModel(
      author: "O REILLY",
      id: "5",
      description: description,
      longDescription: longDesc,
      price: 29.99,
      releaseYear: 2020,
      title: "Head First Java",
      imageUrl: imageUrl,
    ),
    BookModel(
      author: "Mr Amzon",
      id: "6",
      description: description,
      longDescription: longDesc,
      price: 29.99,
      releaseYear: 2020,
      title: "Java Black Book ",
      imageUrl: imageUrl,
    ),
  ];

  List<BookModel> get books => [..._list];
  BookModel getById(String id) {
    return _list.firstWhere((book) => book.id == id);
  }
}

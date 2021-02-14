import 'package:bookstore/src/core/presentation/common/style/app-text-theme.dart';
import 'package:bookstore/src/core/presentation/common/widgets/action-button.dart';
import 'package:bookstore/src/core/presentation/providers/book-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _bookId = ModalRoute.of(context).settings.arguments as int;
    final _loadedBook = Provider.of<BookProvider>(context).getById(_bookId);
    print(_bookId);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            actions: [
              IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
            ],
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                _loadedBook.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${_loadedBook.title}", style: bookTitleStyle),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Author : ${_loadedBook.author}", style: authorStyle),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Release Year : ${_loadedBook.releaseYear}"),
                      Text(
                        "\$ ${_loadedBook.price}",
                        style: priceStyle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ActionButton(
                        icon: Icons.favorite_outline,
                        label: "Add To WishList",
                        onPressed: () {},
                      ),
                      ActionButton(
                          label: "Add To Cart",
                          icon: Icons.add_shopping_cart,
                          onPressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "${_loadedBook.description}",
                    textAlign: TextAlign.justify,
                    style: bookDescStyle,
                  ),
                  Text(
                    "${_loadedBook.longDescription}",
                    textAlign: TextAlign.justify,
                    style: bookDescStyle,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

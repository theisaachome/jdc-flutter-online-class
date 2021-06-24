import 'package:bookstore/src/core/presentation/app-route/app-routes.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String author;
  final String description;
  final String title;
  final double price;

  const BookItem(
      {Key key,
      this.id,
      this.imageUrl,
      this.author,
      this.description,
      this.title,
      this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(AppRoute.detail, arguments: id);
      },
      child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ClipRRect(
                  child: Image.network(
                    imageUrl,
                    height: 180,
                    width: MediaQuery.of(context).size.width / 3,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 26),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      description,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(letterSpacing: .5, fontSize: 14),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "by ",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          TextSpan(
                              text: author,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ])),
                        SizedBox(
                          height: 8,
                        ),
                        Spacer(),
                        Text(
                          "\$ $price",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

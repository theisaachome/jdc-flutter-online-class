import 'package:demo/news/model/article.dart';
import 'package:demo/news/shared/app-style.dart';
import 'package:demo/news/shared/util/app-date-fomat.dart';
import 'package:flutter/material.dart';

class NewsItemWidget extends StatelessWidget {
  final Article article;
  const NewsItemWidget({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _articleTop(),
          // aritle header
          Text(
            article.title,
            style: artileHeaderStyle,
          ),
          SizedBox(
            height: 8,
          ),
          // artile content
          Text(
            article.content,
            style: artileBodyStyle,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          // article bottom
          _articleBottom(),
          Divider(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }

  Widget _articleTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(article.imageUrl),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            article.author,
            style: authorStyle,
          ),
        ],
      ),
    );
  }

  Widget _articleBottom() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.bookmark_border,
              color: Colors.red,
            ),
          ),
          Text(
            "Read later",
            style: authorStyle.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Text(myDateFormat(article.date)),
        ],
      ),
    );
  }
}

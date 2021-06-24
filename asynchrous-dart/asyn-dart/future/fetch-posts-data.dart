import 'dart:convert';

import 'package:http/http.dart' as http;

class Post {
  String title;
  String body;
  Post({this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(title: json['title'], body: json['body']);
  }
}

Future<List<Post>> getPosts() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  Iterable list = jsonDecode(response.body);
  return list.map((e) => Post.fromJson(e)).toList();
}

void main() {
  getPosts()
      .then((lists) => lists.forEach((p) => print("Title: ${p.title}")))
      .catchError((err) => print(err))
      .whenComplete(() => print("Fetching Done!."));
}

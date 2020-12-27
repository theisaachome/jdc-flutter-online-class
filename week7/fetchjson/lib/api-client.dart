import 'dart:convert';

import 'package:fetchjson/model.dart';
import 'package:http/http.dart' as http;

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

Future<List<Post>> fetchPosts() async {
  final response = await http.get("https://jsonplaceholder.typicode.com/posts");

  final posts = postsFromJson(response.body);
  return posts;
}

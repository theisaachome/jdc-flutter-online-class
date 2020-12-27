import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:jsondemo/models/contact-model.dart';
import 'package:jsondemo/models/freinds-model.dart';
import 'package:jsondemo/models/photo-model.dart';
import 'package:jsondemo/models/photos-model.dart';
import 'package:jsondemo/models/post-model.dart';
import 'package:jsondemo/models/product-model.dart';

Future<String> _loadAssetsData(String url) {
  return rootBundle.loadString(url);
}

Future<PostModel> loadPostData() async {
  final rawString = await _loadAssetsData("assets/json/post.json");
  print(rawString);
  final jsonMap = jsonDecode(rawString);
  print(jsonMap);
  final post = PostModel.fromJson(jsonMap);
  return post;
}

Future<FriendModel> loadFriendData() async {
  final rawString = await _loadAssetsData("assets/json/friend.json");
  print(rawString);
  final jsonMap = jsonDecode(rawString);

  final friend = FriendModel.fromJson(jsonMap);
  return friend;
}

Future<ContactModel> loadContactData() async {
  final rawString = await _loadAssetsData("assets/json/contact.json");
  print(rawString);
  final jsonMap = jsonDecode(rawString);

  final contact = ContactModel.fromJson(jsonMap);
  return contact;
}

Future<ProductModel> loadProductData() async {
  final rawString = await _loadAssetsData("assets/json/product.json");
  print(rawString);
  final jsonMap = jsonDecode(rawString);
  print(jsonMap);
  final product = ProductModel.fromJson(jsonMap);
  return product;
}

Future<PhotoList> loadPhotoData() async {
  final rawString = await _loadAssetsData("assets/json/photos.json");
  print(rawString);
  final jsonMap = jsonDecode(rawString);
  print(jsonMap);
  final photolist = PhotoList.fromJson(jsonMap);
  return photolist;
}

Future<List<Photos>> fetchPhotoAlbum() async {
  const url = "http://jsonplaceholder.typicode.com/photos";
  final response = await http.get(url);
  final photos = photosFromJson(response.body);
  return photos;
}

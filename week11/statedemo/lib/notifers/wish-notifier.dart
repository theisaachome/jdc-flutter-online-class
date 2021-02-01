import 'package:flutter/material.dart';
import 'package:statedemo/models/wish-model.dart';

class WishNotifier extends ChangeNotifier {
  final List<Wish> _wishes = [
    Wish(
      title: "To work at Google",
      note: "I Wish to work there one day",
    ),
    Wish(
      title: "Go NewYork",
      note: "Meet Super Stars",
    ),
    Wish(
      title: "Go England",
      note: "To Watch Footbal England Derby",
    ),
  ];

  set setWish(Wish wish) {
    _wishes.add(wish);
    notifyListeners();
  }

  List<Wish> get getWishes => [..._wishes];

  addWish(Wish newWish) {
    print("${newWish.title}");
    _wishes.add(newWish);
    notifyListeners();
  }

  deleteWish() {
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {
  var favorites = <String>[]; // 즐겨찾기 문자열 리스트
  var likes = <String>[]; // 좋아요한 단어 리스트

  void toggleFavorite(String item) {
    if (favorites.contains(item)) {
      favorites.remove(item);
    } else {
      favorites.add(item);
    }
    notifyListeners();
  }

  void addFavorite(String item) {
    favorites.add(item);
    notifyListeners();
  }

  void toggleLike(String item) {
    if (likes.contains(item)) {
      likes.remove(item);
    } else {
      likes.add(item);
    }
    notifyListeners();
  }
}

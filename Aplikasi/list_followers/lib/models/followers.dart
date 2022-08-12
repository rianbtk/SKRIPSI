import 'package:flutter/material.dart';

class Followers extends ChangeNotifier {
  final List<int> _followerItems = [];

  List<int> get items => _followerItems;

  void add(int itemNo) {
    _followerItems.add(itemNo);
    notifyListeners();
  }

  void remove(int itemNo) {
    _followerItems.remove(itemNo);
    notifyListeners();
  }
}

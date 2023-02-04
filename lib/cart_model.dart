import 'dart:collection';

import 'package:flutter/cupertino.dart';

class CartModel extends ChangeNotifier {
  final List<String> _items = ['hi', 'there'];

  UnmodifiableListView<String> get items => UnmodifiableListView(_items);

  int get totalPrice => _items.length * 42;

  void add(String item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }

}
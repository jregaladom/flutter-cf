import 'package:flutter/cupertino.dart';
import 'package:wish_list/models/item.dart';
import 'dart:math';

List<Item> initialData = List.generate(
    20,
    (index) => Item(
        title: 'Jordan 1 Low',
        price:
            double.parse((Random().nextInt(99) * index).toString()).toString(),
        image: 'assets/images/jordan.png'));

class ItemProvider extends ChangeNotifier {
  final List<Item> _items = initialData;
  final List<Item> _whish = [];

  List<Item> get items => _items;
  List<Item> get whish => _whish;

  void addToWishList(Item item) {
    _whish.add(item);
    notifyListeners();
  }

  void removeWhishList(Item item) {
    whish.remove(item);
    notifyListeners();
  }
}

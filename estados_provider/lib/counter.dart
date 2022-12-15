import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int _count = 10;
  int get count => _count;

  void incrementCounter() {
    _count++;
    notifyListeners();
  }
}

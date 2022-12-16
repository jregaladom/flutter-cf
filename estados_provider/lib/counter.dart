import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int _count = 1;
  int get count => _count;
  int get add => _count + _count;
  int get multy => _count * _count;

  void incrementCounter() {
    _count++;
    notifyListeners();
  }
}

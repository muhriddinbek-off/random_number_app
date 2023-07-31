import 'package:flutter/material.dart';

class ModalProvider with ChangeNotifier {
  int _answer = 0;
  int get answer => _answer;
  void getAdd() {
    _answer = _answer + 1;
    notifyListeners();
  }

  void getRemove() {
    _answer = _answer - _answer;
    notifyListeners();
  }
}

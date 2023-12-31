import 'package:flutter/material.dart';

class BodySktechModel extends ChangeNotifier {
  bool _isFront = true;
  bool get isFront => _isFront;

  void changeCamera(bool value) {
    _isFront = value;
    notifyListeners();
    return;
  }
}

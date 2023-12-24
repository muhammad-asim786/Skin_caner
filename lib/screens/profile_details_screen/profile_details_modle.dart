import 'dart:developer';

import 'package:flutter/material.dart';

class ProfileDeteilModel extends ChangeNotifier {
  final List<String> genders = ['Male', 'Female', 'Other'];
  String selectedGender = 'Male';
  int index = 0;

  void checkGender(int indexe) {
    log('this is index $indexe');
    selectedGender = genders[indexe];
    index = indexe;
    notifyListeners();
  }
}

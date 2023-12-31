import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';

import '../messages_screen/messages_screen.dart';
import '../my_body_screen/my_body_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../uv_index_screen/uv_index_screen.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel() {
    dev.log('init home view model');
    isTimeChange();
  }
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  bool _isCamera = false;
  bool get isCamera => _isCamera;
  bool isTime = false;
  List<String> titles = [
    'MY BODY',
    'UV INDEX',
    'MESSAGES',
    'MESSAGES',
    'PROFILE'
  ];
  static List<Widget> widgetOptions = <Widget>[
    const MyBodyScreen(),
    const UvIndexScreen(),
    const MessagesScreen(),
    const MessagesScreen(),
    const ProfileScreen(),
  ];

  void changeIndex(int index) {
    if (index == 2) return;
    _currentIndex = index;
    notifyListeners();
    return;
  }

  void changeCamera() {
    _isCamera = !_isCamera;
    notifyListeners();
    return;
  }

  Future<bool> generateRandomBool() async {
    final random = Random();
    final delaySeconds = random.nextInt(5) + 1;
    await Future.delayed(Duration(seconds: delaySeconds));
    return true;
  }

  void isTimeChange() async {
    final time = await generateRandomBool();
    isTime = time;
    dev.log('this is the value of time $isTime');
    notifyListeners();
    return;
  }
}

import 'package:flutter/material.dart';

import '../messages_screen/messages_screen.dart';
import '../my_body_screen/my_body_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../uv_index_screen/uv_index_screen.dart';

class HomeViewModel extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
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
}

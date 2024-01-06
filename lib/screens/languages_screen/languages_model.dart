import 'package:canecer_scan/core/constant/image.dart';
import 'package:flutter/material.dart';

class LanguagesModel extends ChangeNotifier {
  // Add your code here
  List<String> languagesText = [
    'English',
    'Urdu',
    'Hindi',
    'Arabic',
    'Spanish',
    'French',
    'Russian',
  ];

  // Add your code here
  List<String> languagesIcons = [
    engFlag,
    pakFlag,
    indiaFlag,
    sudiaFlag,
    spanFlag,
    franceFlag,
    russFlag,
  ];
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../onboarding_screen/onboarding_screen.dart';

class SplashModel extends ChangeNotifier {
  intit() async {
    Timer(const Duration(seconds: 3), () async {
      await Get.offAll(() => const OnboardingScreen());
    });
  }
}

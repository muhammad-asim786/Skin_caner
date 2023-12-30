import 'package:flutter/material.dart';

class ChangePasswordModel extends ChangeNotifier {
  List<String> deletionActions = [
    'You will no longer be able to access your account and all your data will be deleted. You can create a new account at any time.',
    'All your saved preferences and settings will be lost permanently.',
    'Any subscriptions or memberships associated with your account will be canceled.'
  ];
}

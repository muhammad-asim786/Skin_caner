import 'package:flutter/material.dart';

class Utils {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static void showAlertDialog(BuildContext context, String message,
      String title, Function()? onPressed) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

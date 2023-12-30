import 'package:canecer_scan/core/constant/color.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: greyColor,
      body: Center(
        child: Text('MessagesScreen'),
      ),
    );
  }
}

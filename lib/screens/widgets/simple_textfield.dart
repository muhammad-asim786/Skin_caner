import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleTextField extends StatelessWidget {
  final String hintText;

  const SimpleTextField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: hintText,
        labelStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
        hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}

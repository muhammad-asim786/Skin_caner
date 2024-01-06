import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool isHomePage;
  final Color color;
  const CustomAppBar(
      {super.key,
      required this.title,
      required this.isHomePage,
      this.color = blackColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey[100]!,
            Colors.grey[50]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 1.5),
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: isHomePage ? false : true,
        centerTitle: true,
        title: CustomText(
          text: title,
          color: color,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

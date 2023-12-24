import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerRowWithShadowedImages extends StatelessWidget {
  final Function()? onGoogleTab;
  final Function()? onFacebookTab;
  const ContainerRowWithShadowedImages(
      {super.key, this.onGoogleTab, this.onFacebookTab});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onGoogleTab,
          child: ShadowedContainer(
            child: Image.asset(
              googleImage,
              width: 40.w, // Adjust the width as needed
              height: 40.h, // Adjust the height as needed
            ),
          ),
        ),
        GestureDetector(
          onTap: onFacebookTab,
          child: ShadowedContainer(
            child: Image.asset(
              facebookImage,
              width: 40.w, // Adjust the width as needed
              height: 40.h, // Adjust the height as needed
            ),
          ),
        ),
      ],
    );
  }
}

class ShadowedContainer extends StatelessWidget {
  final Widget child;

  ShadowedContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
        color: whiteColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}

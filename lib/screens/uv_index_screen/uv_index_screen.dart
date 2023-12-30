import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/image.dart';

class UvIndexScreen extends StatelessWidget {
  const UvIndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Center(child: Image.asset(sun, width: 122.w, height: 122.h)),
            SizedBox(height: 20.h),
            CustomText(
                text: 'High', fontSize: 20.sp, fontWeight: FontWeight.bold),
            SizedBox(height: 64.h),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                  text: 'UV Index',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                  maxLines: 3,
                  text:
                      'Protective cloths as well as SPF 30+ creams is needed. Protect your eyes with sunglasses and seek shades.',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.4)),
            ),
            SizedBox(height: 40.h),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                  text: 'latest Result',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                  maxLines: 3,
                  text: '28 Sep 2023, 4:30 PM in your city.',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.4)),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                  text: 'Source', fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                  maxLines: 3,
                  text: 'OpenWeather.',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.4)),
            ),
          ],
        ),
      ),
    );
  }
}

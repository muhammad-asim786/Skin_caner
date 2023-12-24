import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/color.dart';
import 'custom_text.dart';

class CancerVerticleCard extends StatelessWidget {
  final String? image;
  final String? name;
  final String? description;
  final Function()? onTap;
  const CancerVerticleCard({
    Key? key,
    this.onTap,
    this.image,
    this.name,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(-2, -2), // Negative offset for top-left
            ),
            BoxShadow(
              color: blackColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(2, 2), // Positive offset for bottom-right
            ),
          ],
          borderRadius: BorderRadius.circular(11.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                image!,
                width: 90.w,
                height: 100.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 250.w,
                    child: CustomText(
                      text: name!,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp,
                    ),
                  ),
                  SizedBox(
                    width: 260.w,
                    child: CustomText(
                      maxLines: 3,
                      text: description!,
                      fontSize: 13.sp,
                      color: blackColor.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

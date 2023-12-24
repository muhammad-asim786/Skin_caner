import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/color.dart';

class CanerHorizantolCard extends StatelessWidget {
  const CanerHorizantolCard({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.recipeIndex,
    this.onTap,
  });

  final String image;
  final String name;
  final String description;
  final int recipeIndex;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 235.h,
        width: 282.w,
        margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.r),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 4),
            )
          ],
          color: whiteColor,
        ),
        child: Column(
          children: [
            Container(
              height: 150.h,
              width: 282.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 7.h),
                  SizedBox(
                    width: 282.w,
                    child: CustomText(
                      text: name,
                      fontSize: 17.sp,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  CustomText(
                    maxLines: 3,
                    text: description,
                    fontSize: 11.sp,
                    color: blackColor.withOpacity(0.5),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

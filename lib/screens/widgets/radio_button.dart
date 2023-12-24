// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/color.dart';
import 'custom_text.dart';

class RadioButton extends StatelessWidget {
  String text = 'male';
  final bool isSelected;
  final Function() onTap;
  RadioButton(
      {super.key,
      required this.text,
      this.isSelected = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.fromBorderSide(
                        BorderSide(color: primaryColor, width: 3.sp)),
                    shape: BoxShape.circle),
                child: Container(
                  padding: EdgeInsets.all(5.sp),
                  decoration: BoxDecoration(
                      color: isSelected ? primaryColor : whiteColor,
                      border: Border.fromBorderSide(
                          BorderSide(color: whiteColor, width: 3.sp)),
                      shape: BoxShape.circle),
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 10.w),
        CustomText(text: text, fontSize: 13.sp),
        SizedBox(width: 10.w),
      ],
    );
  }
}

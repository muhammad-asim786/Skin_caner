// ignore_for_file: unused_local_variable

import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/change_password_screen/change_model_model.dart';
import 'package:canecer_scan/screens/widgets/custom_appbar.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:canecer_scan/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../core/animation/fade_animation.dart';
import '../home_screen/home_screen.dart';
import '../widgets/custom_button.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ChangePasswordModel>(context);
    return Scaffold(
      backgroundColor: greyColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const CustomAppBar(
            title: 'Change Password', isHomePage: false, color: primaryColor),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.h),
                  CustomText(
                      maxLines: 2,
                      text:
                          'Please change your password to keep your account safe.',
                      fontSize: 15.sp,
                      color: blackColor.withOpacity(0.6),
                      fontWeight: FontWeight.w500),
                  SizedBox(height: 50.h),
                  CustomText(
                      maxLines: 2,
                      text: 'Your current password:',
                      fontSize: 15.sp,
                      color: blackColor.withOpacity(0.6),
                      fontWeight: FontWeight.w500),
                  SizedBox(height: 10.h),
                  const FadeAnimation(
                      0.7, CustomTextField(hintText: 'Password')),
                  SizedBox(height: 5.h),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomText(
                        text: 'Forgot Password?',
                        fontSize: 13.sp,
                        color: primaryColor)
                  ]),
                  SizedBox(height: 30.h),
                  CustomText(
                      maxLines: 2,
                      text: 'Your new password:',
                      fontSize: 15.sp,
                      color: blackColor.withOpacity(0.6),
                      fontWeight: FontWeight.w500),
                  SizedBox(height: 10.h),
                  const FadeAnimation(
                      0.7, CustomTextField(hintText: 'Password')),
                  SizedBox(height: 30.h),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: FadeAnimation(
                              0.1,
                              DefaultButton(
                                  text: 'Change my password',
                                  onPressed: () =>
                                      Get.to(() => const HomeScreen()))),
                        ),
                        SizedBox(height: 20.h),
                        Center(
                            child: CustomText(
                                onTap: () => Get.back(),
                                text: 'Cancle',
                                fontSize: 13.sp,
                                color: primaryColor)),
                      ],
                    ),
                  ),
                  SizedBox(height: 80.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

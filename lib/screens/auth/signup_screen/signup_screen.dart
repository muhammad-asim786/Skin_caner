import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:canecer_scan/screens/auth/signin_screen/signin_screen.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:canecer_scan/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/animation/fade_animation.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_account.dart';
import '../../widgets/cutom_facebook_google_logo.dart';

class SignInUpScreen extends StatelessWidget {
  const SignInUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Center(
                child: CustomText(
                    text: 'Create new account',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold),
              ),
              FadeAnimation(
                  0.4,
                  CircleAvatar(
                    radius: 80.r,
                    backgroundImage: const AssetImage(profileIamge),
                  )),
              SizedBox(height: 50.h),
              const FadeAnimation(0.6, CustomTextField(hintText: 'Email')),
              SizedBox(height: 30.h),
              const FadeAnimation(0.7, CustomTextField(hintText: 'Name')),
              SizedBox(height: 30.h),
              const FadeAnimation(0.8, CustomTextField(hintText: 'Phone No.')),
              SizedBox(height: 30.h),
              const FadeAnimation(0.10, CustomTextField(hintText: 'Gender')),
              SizedBox(height: 30.h),
              const FadeAnimation(
                  0.11, CustomTextField(hintText: 'Date of birth')),
              SizedBox(height: 30.h),
              const FadeAnimation(
                  0.12, CustomTextField(hintText: 'Date of birth')),
              SizedBox(height: 30.h),
              const FadeAnimation(0.14, CustomTextField(hintText: 'Password')),
              SizedBox(height: 20.h),
              SizedBox(height: 40.h),
              const FadeAnimation(0.10, DefaultButton(text: 'Register')),
              SizedBox(height: 60.h),
              CustomText(
                text: 'or login using ',
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: blackColor.withOpacity(0.5),
              ),
              SizedBox(height: 50.h),
              ContainerRowWithShadowedImages(
                onFacebookTab: () {},
                onGoogleTab: () {},
              ),
              SizedBox(height: 30.h),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () => Get.to(() => const SignInScreen()),
                  child: const CustomTextWihtAccount(
                    text: 'Already have an account? ',
                    text2: 'Login Now',
                  ),
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}

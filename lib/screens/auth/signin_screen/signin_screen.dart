import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/auth/forgotpassword_screen/forgotpassword_screen.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:canecer_scan/screens/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../core/animation/fade_animation.dart';
import '../../home_screen/home_screen.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_account.dart';
import '../../widgets/cutom_facebook_google_logo.dart';
import '../signup_screen/signup_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        child: Column(
          children: [
            SizedBox(height: 80.h),
            Center(
              child: CustomText(
                text: 'Login to your account',
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 80.h),
            const FadeAnimation(0.7, CustomTextField(hintText: 'Email')),
            SizedBox(height: 60.h),
            const FadeAnimation(0.7, CustomTextField(hintText: 'Password')),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () => Get.to(() => const ForgotpasswordScreen()),
              child: Align(
                alignment: Alignment.bottomRight,
                child: CustomText(
                  color: primaryColor,
                  text: 'Forgot Password?',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 60.h),
            FadeAnimation(
                0.1,
                DefaultButton(
                    text: 'Log in',
                    onPressed: () => Get.to(() => const HomeScreen()))),
            SizedBox(height: 60.h),
            CustomText(
              text: 'or login using ',
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: blackColor.withOpacity(0.5),
            ),
            SizedBox(height: 50.h),
            FadeAnimation(
              0.9,
              ContainerRowWithShadowedImages(
                  onFacebookTab: () {}, onGoogleTab: () {}),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () => Get.to(() => const SignInUpScreen()),
                  child: const CustomTextWihtAccount(
                    text: 'Don’t have an account? ',
                    text2: 'Register Now',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

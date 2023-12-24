import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../core/animation/fade_animation.dart';
import '../home_screen/home_screen.dart';
import '../widgets/custom_button.dart';
import 'delete_account_model.dart';

class DeleAccountScreen extends StatelessWidget {
  const DeleAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<DeleteAccountModel>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: blackColor,
            )),
        backgroundColor: whiteColor,
        title: const CustomText(text: 'Delete Account', color: blackColor),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            CustomText(
                maxLines: 2,
                text: 'Are you sure you want to delete your account?',
                fontSize: 23.sp,
                color: blackColor,
                fontWeight: FontWeight.w500),
            SizedBox(height: 30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                model.deletionActions.length,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 40.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.info_outline_rounded),
                      SizedBox(width: 20.w),
                      Expanded(
                        child: CustomText(
                          maxLines: 10,
                          text: model.deletionActions[index],
                          fontSize: 13.sp,
                          color: blackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ).toList(),
            ),
            SizedBox(height: 20.h),
            CustomText(
              maxLines: 10,
              text:
                  'It\'s very important to us that we can help you continue looking after your Skin. Before proceeding, please consider contacting our support team at info@caner.com', // Replace with your list items
              fontSize: 13.sp,
              color: blackColor,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 40.h),
            Center(
              child: FadeAnimation(
                  0.1,
                  DefaultButton(
                      text: 'Confirm',
                      onPressed: () => Get.to(() => const HomeScreen()))),
            ),
            SizedBox(height: 20.h),
            Center(
                child: CustomText(
                    text: 'Cancle', fontSize: 13.sp, color: primaryColor)),
          ],
        ),
      ),
    );
  }
}

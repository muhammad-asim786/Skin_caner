import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/profile_details_screen/profile_details_screen.dart';
import 'package:canecer_scan/screens/profile_screen/profile_model.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../delete_account_screen/delete_account_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ProfileModel>(context);
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: ListView.builder(
              padding: EdgeInsets.only(top: 50.h),
              itemCount: model.profileText.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      Get.to(() => const ProfileDetailsScreen());
                    } else if (index == 1) {
                      // Add your edit functionality here
                    } else if (index == 2) {
                      // Add your edit functionality here
                    } else if (index == 3) {
                      // Add your edit functionality here
                    } else if (index == 4) {
                      // Add your edit functionality here
                    } else if (index == 5) {
                      // Add your edit functionality here
                    } else if (index == 6) {
                      // Add your edit functionality here
                    } else if (index == 7) {
                      Get.to(() => const DeleAccountScreen());
                    }
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: CustomText(
                            text: model.profileText[index],
                            fontSize: 14.sp,
                            color: blackColor.withOpacity(0.6),
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8.h),
                      Divider(color: blackColor.withOpacity(0.5), height: 1),
                      SizedBox(height: 20.h),
                    ],
                  ),
                );
              })),
    );
  }
}

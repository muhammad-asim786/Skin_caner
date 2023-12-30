import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/core/utils/utils.dart';
import 'package:canecer_scan/screens/change_password_screen/change_password_screen.dart';
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
      backgroundColor: greyColor,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: ListView.builder(
              padding: EdgeInsets.only(top: 50.h),
              itemCount: model.profileText.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      splashColor: primaryColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5.r),
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
                          Get.to(() => const ChangePasswordScreen());
                        } else if (index == 6) {
                          Get.to(() => const DeleAccountScreen());
                        } else if (index == 7) {
                          Utils.showAlertDialog(
                              context, 'Are you sure to lougout?', 'Logout',
                              () {
                            Get.back();
                          });
                        }
                      },
                      child: SizedBox(
                        height: 30.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                                text: model.profileText[index],
                                fontSize: 14.sp,
                                color: blackColor.withOpacity(0.6),
                                fontWeight: FontWeight.w500),
                            Icon(Icons.arrow_forward_ios,
                                size: 15.sp,
                                color: primaryColor.withOpacity(0.6))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Divider(color: blackColor.withOpacity(0.2), height: 2),
                    SizedBox(height: 25.h),
                  ],
                );
              })),
    );
  }
}

import 'package:canecer_scan/core/animation/fade_animation.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:canecer_scan/screens/profile_details_screen/profile_details_modle.dart';
import 'package:canecer_scan/screens/widgets/custom_button.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../core/constant/color.dart';
import '../widgets/radio_button.dart';
import '../widgets/simple_textfield.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ProfileDeteilModel>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: blackColor,
              )),
          // backgroundColor: greyColor,
          elevation: 2,
        ),
        backgroundColor: greyColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Center(
                          child: CustomText(
                        text: 'My Profile',
                        color: primaryColor,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                      )),
                      SizedBox(height: 20.h),
                      Stack(
                        children: [
                          CircleAvatar(
                              radius: 40.sp,
                              backgroundImage: const AssetImage(profileIamge)),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 30.h,
                                width: 30.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: primaryColor),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 12.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      CustomText(text: 'asim109287@gmail.com', fontSize: 15.sp),
                      SizedBox(height: 30.h),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 50.h),
                          decoration:
                              BoxDecoration(color: whiteColor, boxShadow: [
                            BoxShadow(color: Colors.black12, blurRadius: 1.sp)
                          ]),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(text: 'Gender', fontSize: 13.sp),
                                SizedBox(height: 10.h),
                                Column(
                                    children: List.generate(
                                  model.genders.length,
                                  (index) => Padding(
                                    padding: EdgeInsets.only(bottom: 10.h),
                                    child: RadioButton(
                                      text: model.genders[index],
                                      onTap: () => model.checkGender(index),
                                      isSelected: model.index == index,
                                    ),
                                  ),
                                )),
                                const SimpleTextField(hintText: 'First Name'),
                                SizedBox(height: 10.h),
                                const SimpleTextField(hintText: 'Last Name'),
                                SizedBox(height: 10.h),
                                const SimpleTextField(
                                    hintText: 'Date of Birth'),
                              ])),
                      SizedBox(height: 20.h),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Center(
                              child: FadeAnimation(
                                  0.1,
                                  DefaultButton(
                                      text: 'Save',
                                      onPressed: () => Get.back())),
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
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

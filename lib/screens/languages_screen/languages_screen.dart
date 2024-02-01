// ignore_for_file: non_constant_identifier_names

import 'package:canecer_scan/core/animation/fade_animation.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:canecer_scan/screens/languages_screen/languages_model.dart';
import 'package:canecer_scan/screens/widgets/custom_appbar.dart';
import 'package:canecer_scan/screens/widgets/custom_button.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:canecer_scan/screens/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../core/constant/color.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({super.key});

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguagesModel(),
        child: Consumer<LanguagesModel>(
          builder: (context, model, child) {
            return Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(60.h),
                  child: const CustomAppBar(
                      title: 'Languages',
                      isHomePage: false,
                      color: primaryColor),
                ),
                backgroundColor: greyColor,
                body: LanguageWidget(model));
          },
        ));
  }

  SafeArea LanguageWidget(LanguagesModel model) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Image.asset(languagesIcon, height: 100.h, width: 100.w),
                  SizedBox(height: 20.h),
                  CustomText(
                      maxLines: 2,
                      text: 'Select your preferred language',
                      fontSize: 20.sp,
                      color: blackColor,
                      fontWeight: FontWeight.bold),
                  SizedBox(height: 50.h),
                  SizedBox(
                    height: 380.h,
                    child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: model.languagesText.length,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {
                              model.changeIndex(index);
                            },
                            child: Column(children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(model.languagesIcons[index],
                                            height: 20.h),
                                        SizedBox(width: 10.w),
                                        CustomText(
                                            text: model.languagesText[index])
                                      ],
                                    ),
                                    RadioButton(
                                      text: '',
                                      onTap: () {
                                        model.changeIndex(index);
                                      },
                                      isSelected:
                                          model.index == index ? true : false,
                                    )
                                  ]),
                              const Divider(),
                              SizedBox(height: 15.h)
                            ]),
                          );
                        }),
                  ),
                  SaveButton(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded SaveButton() {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: FadeAnimation(
                0.1, DefaultButton(text: 'Save', onPressed: () => Get.back())),
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
    );
  }
}

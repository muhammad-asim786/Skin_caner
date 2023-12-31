import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/body_sketch_screen/body_sktech_screen.dart';
import 'package:canecer_scan/screens/cancer_type_details_screen/cancer_type_details_screen.dart';
import 'package:canecer_scan/screens/home_screen/home_model.dart';
import 'package:canecer_scan/screens/view_all_screen/view_all_screen.dart';
import 'package:canecer_scan/screens/widgets/cancer_card_horizantol_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../core/constant/image.dart';
import '../../model/caner_type_model.dart';
import '../widgets/caner_verticle_card_widget.dart';
import '../widgets/custom_text.dart';

class MyBodyScreen extends StatefulWidget {
  const MyBodyScreen({super.key});

  @override
  State<MyBodyScreen> createState() => _MyBodyScreenState();
}

class _MyBodyScreenState extends State<MyBodyScreen> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Scaffold(
        backgroundColor: greyColor,
        body: SingleChildScrollView(
          child: model.isTime
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        children: [
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30.r,
                                backgroundImage: const AssetImage(profileIamge),
                              ),
                              CustomText(
                                  text: 'Hi, Muhammad Asim',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                              Container(
                                height: 30.h,
                                width: 92.w,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Center(
                                    child: CustomText(
                                        text: 'Find skin type',
                                        color: whiteColor,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(10.r),
                                splashColor: primaryColor.withOpacity(0.5),
                                onTap: () => model.changeCamera(),
                                child: Image.asset(
                                    model.isCamera ? profileGrey : myBody,
                                    height: 30.h,
                                    width: 30.w),
                              ),
                              SizedBox(width: 15.w),
                              InkWell(
                                  splashColor: primaryColor.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(5.r),
                                  onTap: () => model.changeCamera(),
                                  child: Image.asset(
                                      model.isCamera ? menu : menuGrey,
                                      height: 26.h,
                                      width: 21.w)),
                            ],
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 1000),
                      switchInCurve: Curves.easeInOut,
                      switchOutCurve: Curves.easeInOut,
                      transitionBuilder:
                          (Widget child, Animation<double> animation) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(1.0, 0.0),
                            end: Offset.zero,
                          ).animate(animation),
                          child: child,
                        );
                      },
                      child: !model.isCamera
                          ? const Articales()
                          : const BodySktechScreen(),
                    )
                  ],
                )
              : Image.asset(loadingGif, width: 1.sw, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class Articales extends StatelessWidget {
  const Articales({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: GestureDetector(
            onTap: () {
              Get.to(
                () => const ViewAllScreen(),
                transition: Transition.rightToLeft,
                duration: const Duration(milliseconds: 500),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                    text: 'Skin Cancer Types',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
                Container(
                  height: 20.h,
                  width: 46.w,
                  decoration: BoxDecoration(
                      color: blackColor.withOpacity(0.10),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                      child: CustomText(
                          text: 'View all',
                          color: blackColor,
                          fontSize: 9.sp,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 1.sw,
          height: 260.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: cancerTypes.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(
                    () => CancerTypeDetailsScreen(
                      cancerType: cancerTypes[index],
                    ),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500),
                  );
                },
                child: CanerHorizantolCard(
                  image: cancerTypes[index].image.first,
                  name: cancerTypes[index].name,
                  description: cancerTypes[index].description,
                  recipeIndex: index,
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        text: 'Melanoma Symptoms',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => const ViewAllScreen(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500),
                        );
                      },
                      child: Container(
                        height: 20.h,
                        width: 46.w,
                        decoration: BoxDecoration(
                            color: blackColor.withOpacity(0.10),
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: CustomText(
                                text: 'View all',
                                color: blackColor,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: cancerTypes.length,
                      itemBuilder: (context, index) {
                        return CancerVerticleCard(
                          onTap: () => Get.to(
                            () => CancerTypeDetailsScreen(
                              cancerType: cancerTypes[index],
                            ),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 500),
                          ),
                          image: cancerTypes[index].image.first,
                          name: cancerTypes[index].name,
                          description: cancerTypes[index].description,
                        );
                      }),
                )
              ],
            )),
      ],
    );
  }
}

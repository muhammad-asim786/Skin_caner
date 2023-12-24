import 'package:canecer_scan/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/animation/fade_animation.dart';
import '../../core/constant/color.dart';
import '../widgets/custom_text.dart';
import 'onboarding_model.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<OnboardingModel>(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: 1.sh,
            child: PageView(
                controller: model.pageController,
                onPageChanged: (int index) => model.currentPageIndex = index,
                children: [
                  FadeAnimation(0.5,
                      _buildOnboardingPage(imagePath: firstOnbaridingImage)),
                  FadeAnimation(0.5,
                      _buildOnboardingPage(imagePath: secondOnbaridingImage)),
                  FadeAnimation(0.5,
                      _buildOnboardingPage(imagePath: thirdOnbaridingImage))
                ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
                width: 1.sw,
                height: 400.h,
                child: Stack(
                  children: [
                    Image.asset(ellipse,
                        fit: BoxFit.fill, height: 400, width: 1.sw),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        SizedBox(height: 25.h),
                        FadeAnimation(
                            0.1,
                            CustomText(
                              text: 'Skip',
                              color: whiteColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            )),
                        SizedBox(height: 30.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: model.currentPageIndex == 0
                                    ? whiteColor
                                    : Colors.grey,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              height: 10.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: model.currentPageIndex == 1
                                    ? whiteColor
                                    : Colors.grey,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              height: 10.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: model.currentPageIndex == 2
                                    ? whiteColor
                                    : Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        FadeAnimation(
                            1.5,
                            CustomText(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                                text: model.currentPageIndex == 0
                                    ? 'Track and map'
                                    : model.currentPageIndex == 2
                                        ? 'Act in time'
                                        : 'Skin health in a snap',
                                color: whiteColor)),
                        SizedBox(height: 35.h),
                        FadeAnimation(
                            1.5,
                            CustomText(
                                fontSize: 18.sp,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                text: model.currentPageIndex == 0
                                    ? 'Create your body map and track your skin spots regularly.'
                                    : model.currentPageIndex == 2
                                        ? 'Get personalised insights and reminders.Know when to visit a doctor'
                                        : 'Track every spot with a photo and followup alerts',
                                color: whiteColor)),
                        SizedBox(height: 30.h),
                        Container(
                          height: 60.h,
                          width: 60.r,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: darkGreyColor.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () => model.changePageController(),
                            icon: Icon(
                              Icons.arrow_forward,
                              size: 24.sp,
                              color: primaryColor,
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

Widget _buildOnboardingPage({required String imagePath}) {
  return Stack(
    children: [
      SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(imagePath, fit: BoxFit.cover),
        ]),
      ),
    ],
  );
}

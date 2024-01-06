import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:canecer_scan/screens/home_screen/home_model.dart';
import 'package:canecer_scan/screens/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context);
    return Scaffold(
        backgroundColor: greyColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: CustomAppBar(
            title: model.titles[model.currentIndex],
            isHomePage: true,
          ),
        ),
        body: HomeViewModel.widgetOptions[model.currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ClipRRect(
          borderRadius: BorderRadius.circular(40.r),
          child: FloatingActionButton(
            tooltip: 'Camera',
            backgroundColor: purpulColor,
            onPressed: () {},
            child: Image.asset(camera, height: 26, width: 26),
          ),
        ),
        bottomNavigationBar: Container(
          height: 85.h,
          decoration: const BoxDecoration(
            color: whiteColor,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
          ),
          child: BottomNavigationBar(
            useLegacyColorScheme: false,
            enableFeedback: true,
            mouseCursor: SystemMouseCursors.click,
            currentIndex: model.currentIndex,
            onTap: (index) => model.changeIndex(index),
            selectedLabelStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: primaryColor),
            unselectedLabelStyle: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
                color: blackColor),
            elevation: .15,
            selectedItemColor: primaryColor,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: model.currentIndex == 0
                      ? Image.asset(myBody, height: 26.h, width: 26.w)
                      : Image.asset(profileGrey, height: 26.h, width: 26.w),
                  tooltip: 'My Body',
                  label: 'My Body'),
              BottomNavigationBarItem(
                  icon: model.currentIndex == 1
                      ? Image.asset(uvIndexPurple, height: 26.h, width: 26.w)
                      : Image.asset(uvIndex, height: 26.h, width: 26.w),
                  tooltip: 'UV Index',
                  label: 'UV Index'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart, color: Colors.transparent),
                  tooltip: 'Camera',
                  label: 'Camera'),
              BottomNavigationBarItem(
                  icon: model.currentIndex == 3
                      ? Image.asset(messagePurple, height: 26.h, width: 26.w)
                      : Image.asset(message, height: 26.h, width: 26.w),
                  tooltip: 'Messages',
                  label: 'Messages'),
              BottomNavigationBarItem(
                  icon: model.currentIndex == 4
                      ? Image.asset(profilePurple, height: 26.h, width: 26.w)
                      : Image.asset(profile, height: 26.h, width: 26.w),
                  tooltip: 'Profile',
                  label: 'Profile'),
            ],
          ),
        ));
  }
}

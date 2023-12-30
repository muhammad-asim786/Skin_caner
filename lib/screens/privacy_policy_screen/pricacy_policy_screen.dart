import 'package:canecer_scan/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back_ios, color: blackColor)),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: Center(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            ListTile(
              title: Text(
                'Information We Collect',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                'Personal Information:',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'We may collect personal information, such as images of skin lesions or biometric data shared by users for the purpose of skin cancer detection and analysis.',
              ),
            ),
            ListTile(
              title: Text(
                'Share Data:',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'We collect information about how you use our application, such as interaction with features, diagnostic results, device information, and logs for enhancing user experience and app functionality.',
              ),
            ),
            ListTile(
              title: Text(
                'Usage Data:',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'We collect information about how you use our application, such as interaction with features, diagnostic results, device information, and logs for enhancing user experience and app functionality.',
              ),
            ),
            ListTile(
              title: Text(
                'Normal Data:',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'We collect information about how you use our application, such as interaction with features, diagnostic results, device information, and logs for enhancing user experience and app functionality.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

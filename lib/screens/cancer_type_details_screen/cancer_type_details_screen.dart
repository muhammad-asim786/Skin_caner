import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/caner_type_model.dart';

class CancerTypeDetailsScreen extends StatelessWidget {
  final CancerType cancerType;
  const CancerTypeDetailsScreen({super.key, required this.cancerType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: whiteColor,
          title: CustomText(
              text: cancerType.name.toUpperCase(),
              color: blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 33.w, vertical: 50.h),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    text: cancerType.name,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(height: 40.h),
                CustomText(
                    maxLines: 20,
                    text: cancerType.description,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400),
                SizedBox(height: 40.h),
                CustomText(
                    text: 'Example Image',
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(height: 40.h),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cancerType.image.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 20.h),
                      height: 250.h,
                      width: 282.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(cancerType.image[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}

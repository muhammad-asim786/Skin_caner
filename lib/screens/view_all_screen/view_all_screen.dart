import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../model/caner_type_model.dart';
import '../cancer_type_details_screen/cancer_type_details_screen.dart';
import '../widgets/caner_verticle_card_widget.dart';

class ViewAllScreen extends StatelessWidget {
  const ViewAllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: whiteColor,
          title: CustomText(
              text: 'Skin Cancer Types',
              color: blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: cancerTypes.length,
                      itemBuilder: (context, index) {
                        CancerType cancerType = cancerTypes[index];
                        return CancerVerticleCard(
                          onTap: () => Get.to(() =>
                              CancerTypeDetailsScreen(cancerType: cancerType)),
                          image: cancerTypes[index].image.first,
                          name: cancerTypes[index].name,
                          description: cancerTypes[index].description,
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }
}

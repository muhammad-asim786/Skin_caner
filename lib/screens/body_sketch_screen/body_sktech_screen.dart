import 'package:canecer_scan/core/constant/color.dart';
import 'package:canecer_scan/core/constant/image.dart';
import 'package:canecer_scan/screens/body_sketch_screen/body_sktech_model.dart';
import 'package:canecer_scan/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BodySktechScreen extends StatelessWidget {
  const BodySktechScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => BodySktechModel(),
        child: Consumer<BodySktechModel>(
          builder: (context, model, child) {
            return Column(
              children: [
                Image.asset(
                  !model.isFront ? skletonBackImage : skletonFrontImage,
                  height: 450,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(color: blackColor, width: 1),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () => model.changeCamera(true),
                          child: Container(
                            width: 100.h,
                            decoration: BoxDecoration(
                                color: model.isFront
                                    ? primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Center(
                              child: CustomText(
                                text: 'Front',
                                color: !model.isFront ? blackColor : whiteColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => model.changeCamera(false),
                          child: Container(
                            width: 100.h,
                            decoration: BoxDecoration(
                                color: !model.isFront
                                    ? primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Center(
                              child: CustomText(
                                text: 'Back',
                                color: model.isFront ? blackColor : whiteColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ]),
                )
              ],
            );
          },
        ));
  }
}

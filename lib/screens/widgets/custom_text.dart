import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final Function()? onTap;

  const CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize = 16.0,
      this.fontWeight,
      this.fontStyle,
      this.fontFamily,
      this.textAlign = TextAlign.left,
      this.overflow = TextOverflow.ellipsis,
      this.maxLines,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text!.tr,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          fontFamily: 'FACEBOLF',
        ),
        textAlign: textAlign,
        overflow: overflow,
        maxLines: maxLines,
      ),
    );
  }
}

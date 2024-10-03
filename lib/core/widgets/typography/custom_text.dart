import 'package:domi_track/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final double fontSize;
  final int? maxLines;

  const CustomText({
    required this.text,
    required this.fontSize,
    super.key,
    this.color,
    this.overflow,
    this.textAlign,
    this.fontWeight,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.white,
        fontSize: fontSize.sp,
        height: 1.5,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
      overflow: overflow ?? TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.justify,
      maxLines: maxLines,
    );
  }
}

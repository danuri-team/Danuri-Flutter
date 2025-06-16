import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DanuriText {
  static TextStyle baseTextStyle = TextStyle(color: Color(0xFF171719));

  //Display
  static final display1 = baseTextStyle.copyWith(
    fontSize: 56.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: -1.79,
    height: 1.29,
  );

  static final display2 = baseTextStyle.copyWith(
    fontSize: 40.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: -1.13,
    height: 1.3,
  );

  //Title
  static final title1 = baseTextStyle.copyWith(
    fontSize: 36.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.97,
    height: 1.33,
  );

  static final title2 = baseTextStyle.copyWith(
    fontSize: 28.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.66,
    height: 1.36,
  );

  static final title3 = baseTextStyle.copyWith(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.55,
    height: 1.33,
  );

  //Heading
  static final heading1 = baseTextStyle.copyWith(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.43,
    height: 1.36,
  );

  static final heading2 = baseTextStyle.copyWith(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: -0.24,
    height: 1.4,
  );

  //HeadLine
  static final headLine1 = baseTextStyle.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    height: 1.45,
  );

  static final headLine2 = baseTextStyle.copyWith(
    fontSize: 17.sp,
    fontWeight: FontWeight.w600,
    height: 1.41,
  );

  //Body
  static final body1Normal = baseTextStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.09,
    height: 1.5,
  );

  static final body1Reading = baseTextStyle.copyWith(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.09,
    height: 1.62,
  );

  static final body2Normal = baseTextStyle.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.14,
    height: 1.47,
  );

  static final body2Reading = baseTextStyle.copyWith(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.14,
    height: 1.6,
  );

  //Label
  static final label1Normal = baseTextStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    height: 1.43,
  );

  static final label1Reading = baseTextStyle.copyWith(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
    height: 1.57,
  );

  static final label2 = baseTextStyle.copyWith(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    height: 1.38,
  );

  //Caption
  static final caption1 = baseTextStyle.copyWith(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.3,
    height: 1.33,
  );

  static final caption2 = baseTextStyle.copyWith(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.34,
    height: 1.27,
  );
}

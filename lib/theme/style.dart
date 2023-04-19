import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/theme/colors.dart';

const fontFamilyManRope = 'Manrope';
const fontFamilyInter = 'Inter';

TextStyle textHeadingStyle = TextStyle(
  color: Colors.white,
  fontFamily: fontFamilyManRope,
  fontSize: 24.sp,
  fontWeight: FontWeight.w700,
);

TextStyle textTitle16StyleManRope = TextStyle(
  color: Colors.white,
  fontSize: 16.sp,
  fontFamily: fontFamilyManRope,
  fontWeight: FontWeight.w700,
);
TextStyle textTitle16StyleInter = TextStyle(
  color: Colors.white,
  fontSize: 16.sp,
  fontFamily: fontFamilyInter,
  fontWeight: FontWeight.w500,
);

BoxDecoration boxDecoration1 = BoxDecoration(
  color: colorBackground,
  border: Border.all(color: colorLightBlack, width: 1),
  borderRadius: BorderRadius.all(
    Radius.circular(16.w),
  ),
);

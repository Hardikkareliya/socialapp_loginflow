import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/style.dart';

class LabelButton extends StatelessWidget {
  const LabelButton({
    required this.onTap,
    required this.title,
    this.btnGradient,
    required this.textColor,
    required this.shadowsColor,
    this.margin,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String title;
  final Color textColor;
  final Gradient? btnGradient;
  final Color shadowsColor;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          constraints: BoxConstraints(maxHeight: 50.h),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          margin: margin,
          // margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.w),
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
              gradient: btnGradient,
              borderRadius: BorderRadius.all(
                Radius.circular(100.w),
              ),
              boxShadow: [
                BoxShadow(
                  color: shadowsColor.withOpacity(0.2),
                  blurRadius: 10.0,
                  offset: const Offset(0, 4),
                ),
              ]),
          child: Text(
            title,
            style: textTitle16StyleManRope,
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.hintText,
    required this.textStyle,
    required this.maxLength,
    required this.textInputType,
    this.isObsecure = false,
    this.textAlign = TextAlign.start,
    Key? key,
  }) : super(key: key);

  final String hintText;
  final TextStyle textStyle;
  final bool isObsecure;
  final TextAlign textAlign;
  final int maxLength;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textStyle,
      maxLines: 1,
      maxLength: maxLength,
      obscureText: isObsecure,
      textAlign: textAlign,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(bottom: 16.h),
        isDense: true,
        labelText: "",
        counterText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        hintStyle: textTitle16StyleManRope.merge(
          const TextStyle(
            color: colordarkGrey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      keyboardType: textInputType,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.isBackButton = true,
    this.isSkipButton = false,
  }) : super(key: key);

  final bool isBackButton;
  final bool isSkipButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isBackButton
            ? GestureDetector(
                onTap: () => {Navigator.pop(context)},
                child: Container(
                  height: 32,
                  width: 32,
                  padding: EdgeInsets.only(left: 16.w),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_back_outlined,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              )
            : Container(
                margin: EdgeInsets.only(left: 4.w),
                height: 32,
                width: 32,
              ),
        isSkipButton
            ? Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text(
                  textAlign: TextAlign.center,
                  'Skip',
                  style: textTitle16StyleManRope.merge(TextStyle(fontWeight: FontWeight.w600, color: colordarkGrey)),
                ),
              )
            : Container(
                margin: EdgeInsets.only(right: 4.w),
                height: 32,
                width: 32,
              ),
      ],
    );
  }
}

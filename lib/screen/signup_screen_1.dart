import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/screen/signup_screen_2.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/utils/constants.dart';
import 'package:socialapp_loginflow/widgets/CustomtextField.dart';
import 'package:socialapp_loginflow/widgets/custom_appbar.dart';
import 'package:socialapp_loginflow/widgets/text_styling.dart';

class SignupScreen1 extends StatefulWidget {
  const SignupScreen1({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen1> createState() => _SignupScreen1State();
}

class _SignupScreen1State extends State<SignupScreen1> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<bool> _onBackPressed() async {
    Navigator.pop(context);
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreen2(),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(18.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              gradient: blueDarkGradient1,
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white, size: 18.w),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const CustomAppBar(),
              SizedBox(height: 40.h),
              Center(
                  child: Text(
                textAlign: TextAlign.center,
                'Let’s get you signed up!',
                style: textHeadingStyle,
              )),
              SizedBox(height: 50.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                height: 50.h,
                alignment: AlignmentDirectional.center,
                decoration: boxDecoration1,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.all(8.w),
                        padding: EdgeInsets.all(8.w),
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                          color: colorLightBlack,
                          border: Border.all(color: colorLightBlack, width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.w),
                          ),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              '${imageAssets}india.png',
                            ),
                            SizedBox(width: 4.w),
                            Text('+91', style: textTitle16StyleInter.merge(TextStyle(fontSize: 14.sp))),
                          ],
                        )),
                    Expanded(
                        child: CustomTextField(
                      maxLength: 10,
                      textStyle: textTitle16StyleManRope.merge(TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16.sp,
                      )),
                      hintText: 'Phone number',
                      textInputType: TextInputType.number,
                    )),
                  ],
                ),
              ),
              SizedBox(height: 14.h),
              TextStyling(
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: 'By entering your number, you’re agreeing to our Terms & \n Conditions and Privacy Policy',
                caseSensitive: false,
                highlightText: const ['Terms &', 'Conditions', 'Privacy Policy'],
                multiTextStyles: [
                  textTitle16StyleManRope.copyWith(
                    color: colorPink,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textTitle16StyleManRope.copyWith(
                    color: colorPink,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textTitle16StyleManRope.copyWith(
                    color: colorPink,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
                textStyle: textTitle16StyleManRope.copyWith(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

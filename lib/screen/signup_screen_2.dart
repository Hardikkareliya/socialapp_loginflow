import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/screen/signup_screen_3.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/widgets/CustomtextField.dart';
import 'package:socialapp_loginflow/widgets/custom_appbar.dart';
import 'package:socialapp_loginflow/widgets/text_styling.dart';

class SignupScreen2 extends StatefulWidget {
  const SignupScreen2({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen2> createState() => _SignupScreen2State();
}

class _SignupScreen2State extends State<SignupScreen2> with TickerProviderStateMixin {
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
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreen3(),
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
                'Enter the code we just \n texted you',
                style: textHeadingStyle,
              )),
              SizedBox(height: 50.h),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 14.w),
                  height: 50.h,
                  alignment: AlignmentDirectional.center,
                  decoration: boxDecoration1,
                  child: CustomTextField(
                    maxLength: 6,
                    textStyle: textTitle16StyleManRope.merge(TextStyle(
                      color: colordarkGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
                    )),
                    isObsecure: true,
                    textAlign: TextAlign.center,
                    hintText: '',
                    textInputType: TextInputType.number,
                  )),
              SizedBox(height: 14.h),
              TextStyling(
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: 'Didn’t get it ? Tap to resend.',
                caseSensitive: false,
                highlightText: const ['Tap to resend.'],
                multiTextStyles: [
                  textTitle16StyleManRope.copyWith(
                    color: colorPink,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
                textStyle: textTitle16StyleManRope.copyWith(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // People use real names on the app.
            ],
          ),
        ),
      ),
    );
  }
}

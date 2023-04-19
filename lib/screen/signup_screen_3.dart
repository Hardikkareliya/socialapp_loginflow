import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/screen/signup_screen_4.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/widgets/CustomtextField.dart';
import 'package:socialapp_loginflow/widgets/custom_appbar.dart';

class SignupScreen3 extends StatefulWidget {
  const SignupScreen3({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen3> createState() => _SignupScreen3State();
}

class _SignupScreen3State extends State<SignupScreen3> with TickerProviderStateMixin {
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
                builder: (context) => const SignupScreen4(),
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
                'What’s your full name ?',
                style: textHeadingStyle,
              )),
              SizedBox(height: 50.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14.w),
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                height: 50.h,
                decoration: boxDecoration1,
                child: Center(
                    child: CustomTextField(
                  maxLength: 50,
                  textStyle: textTitle16StyleManRope.merge(TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  )),
                  hintText: 'First Name',
                  textInputType: TextInputType.text,
                )),
              ),
              SizedBox(height: 14.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14.w),
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                height: 50.h,
                decoration: boxDecoration1,
                child: Center(
                    child: CustomTextField(
                  maxLength: 50,
                  textStyle: textTitle16StyleManRope.merge(TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  )),
                  hintText: 'Last Name',
                  textInputType: TextInputType.text,
                )),
              ),
              SizedBox(height: 14.h),
              Center(
                  child: Text(
                textAlign: TextAlign.center,
                'People use real names on the app.',
                style: textTitle16StyleManRope.copyWith(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              )),
              //   People use real names on the app.
            ],
          ),
        ),
      ),
    );
  }
}

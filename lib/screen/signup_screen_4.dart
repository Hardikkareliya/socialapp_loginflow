import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/screen/signup_screen_5.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/widgets/custom_appbar.dart';

class SignupScreen4 extends StatefulWidget {
  const SignupScreen4({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen4> createState() => _SignupScreen4State();
}

class _SignupScreen4State extends State<SignupScreen4> with TickerProviderStateMixin {
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
                builder: (context) => const SignupScreen5(),
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
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20.h),
                const CustomAppBar(),
                SizedBox(height: 40.h),
                Text(
                  textAlign: TextAlign.center,
                  'Your username',
                  style: textHeadingStyle,
                ),
                SizedBox(height: 50.h),
                Text(
                  textAlign: TextAlign.center,
                  '@jonunflow',
                  style: textTitle16StyleManRope.copyWith(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 16.h),
                Text(
                  textAlign: TextAlign.center,
                  'Change your username',
                  style: textTitle16StyleManRope.copyWith(
                    color: colorPink,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //   People use real names on the app.
              ],
            ),
          ),
        ),
      ),
    );
  }
}

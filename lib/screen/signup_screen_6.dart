import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/screen/signup_screen_7.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/utils/constants.dart';
import 'package:socialapp_loginflow/widgets/custom_appbar.dart';
import 'package:socialapp_loginflow/widgets/label_btn.dart';

class SignupScreen6 extends StatefulWidget {
  const SignupScreen6({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen6> createState() => _SignupScreen6State();
}

class _SignupScreen6State extends State<SignupScreen6> with TickerProviderStateMixin {
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: LabelButton(
          title: 'Next',
          onTap: () {
            // SignupScreen1
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreen7(),
              ),
            );
          },
          textColor: Colors.white,
          btnGradient: blueDarkGradient1,
          shadowsColor: Colors.black87,
          margin: EdgeInsets.symmetric(horizontal: 16.w),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const CustomAppBar(isBackButton: false, isSkipButton: true),
              SizedBox(height: 40.h),
              Center(
                  child: Text(
                textAlign: TextAlign.center,
                'Add a photo ?',
                style: textHeadingStyle,
              )),
              SizedBox(height: 50.h),
              Container(
                height: 200.h,
                width: 200.w,
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                alignment: AlignmentDirectional.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorLightBlack,
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Image.asset(
                    '${imageAssets}camera.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

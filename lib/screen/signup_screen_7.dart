import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/screen/signup_screen_1.dart';
import 'package:socialapp_loginflow/screen/signup_screen_8.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/utils/constants.dart';
import 'package:socialapp_loginflow/widgets/custom_appbar.dart';
import 'package:socialapp_loginflow/widgets/label_btn.dart';

class SignupScreen7 extends StatefulWidget {
  const SignupScreen7({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen7> createState() => _SignupScreen7State();
}

class _SignupScreen7State extends State<SignupScreen7> with TickerProviderStateMixin {
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
          title: 'Pick some friends',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreen8(),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.h),
                const CustomAppBar(isBackButton: false, isSkipButton: true),
                SizedBox(height: 40.h),
                Center(
                    child: Text(
                  textAlign: TextAlign.center,
                  'Let’s find your friends !',
                  style: textHeadingStyle,
                )),
                SizedBox(height: 50.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Image.asset(
                    '${imageAssets}friends_photos.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/screen/signup_screen_1.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/utils/constants.dart';
import 'package:socialapp_loginflow/widgets/label_btn.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    this.isFromPasswordReset = false,
    Key? key,
  }) : super(key: key);
  final bool isFromPasswordReset;

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with TickerProviderStateMixin {
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
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30.h),
                  Center(
                      child: Text(
                    'Welcome to the \n community 👋',
                    style: textHeadingStyle,
                  )),
                  SizedBox(height: 60.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Image.asset(
                      '${imageAssets}welcome_screen_image.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 70.h),
                  LabelButton(
                    title: 'Sign up',
                    onTap: () {
                      // SignupScreen1
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen1(),
                        ),
                      );
                    },
                    textColor: Colors.white,
                    btnGradient: blueDarkGradient1,
                    shadowsColor: Colors.black87,
                    margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                  ),
                  LabelButton(
                    title: 'Log in',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen1(),
                        ),
                      );
                    },
                    textColor: Colors.white,
                    shadowsColor: Colors.black87,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

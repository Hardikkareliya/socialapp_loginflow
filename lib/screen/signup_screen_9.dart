import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/model/selectionModel.dart';
import 'package:socialapp_loginflow/screen/signup_screen_1.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/utils/constants.dart';
import 'package:socialapp_loginflow/widgets/custom_appbar.dart';
import 'package:socialapp_loginflow/widgets/label_btn.dart';

class SignupScreen9 extends StatefulWidget {
  const SignupScreen9({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen9> createState() => _SignupScreen9State();
}

class _SignupScreen9State extends State<SignupScreen9> with TickerProviderStateMixin {
  List<ChannelSelectionModel> channelSelectionArray = [];

  @override
  void initState() {
    super.initState();
    channelSelectionArray.add(ChannelSelectionModel(
      name: 'Dogs in Paris 🐶',
      sortDesc: 'Meet the cute dogs in Meet the cute dogs in Meet the cute dogs in',
      iconPath: '${imageAssets}dog.png',
    ));
    channelSelectionArray.add(ChannelSelectionModel(
      name: 'Foooood 🍟',
      sortDesc: 'Welcome to the food Welcome to the food Welcome to the food Welcome to the food',
      iconPath: '${imageAssets}dog2.png',
    ));
    channelSelectionArray.add(ChannelSelectionModel(
      name: 'English Music Vibes',
      sortDesc: 'English music vibes fo...',
      iconPath: '${imageAssets}dog3.png',
    ));
    channelSelectionArray.add(ChannelSelectionModel(
      name: 'NBA group',
      sortDesc: 'Let’s talk about NBA &...',
      iconPath: '${imageAssets}dog4.png',
    ));
    channelSelectionArray.add(ChannelSelectionModel(
      name: 'Travel 2022',
      sortDesc: 'Let’s talk about Travel &...',
      iconPath: '${imageAssets}dog5.png',
    ));
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
          title: 'Let’s go !',
          onTap: () {},
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
                'Here are some clubs you\nmight enjoy. Tap to join a few',
                style: textHeadingStyle,
              )),
              SizedBox(height: 50.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(22.w, 0, 22.w, 40.h),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: channelSelectionArray.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SelectionTile(
                          title: '${channelSelectionArray[index].name}',
                          sortDesc: '${channelSelectionArray[index].sortDesc}',
                          iconPath: '${channelSelectionArray[index].iconPath}',
                          onTap: () {},
                          isSelected: channelSelectionArray[index].isChecked == checkboxStatus.checked ? true : false,
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectionTile extends StatelessWidget {
  const SelectionTile({
    Key? key,
    required this.title,
    required this.sortDesc,
    required this.iconPath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String sortDesc;
  final String iconPath;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // height: 40.h,
        margin: EdgeInsets.symmetric(vertical: 4.h),
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : colorLightBlack,
          border: Border.all(
            width: 1,
            color: isSelected ? Colors.white : colorLightBlack,
          ),
          borderRadius: BorderRadius.circular(12.w),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              iconPath,
              fit: BoxFit.contain,
              height: 80.h,
              width: 80.w,
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: textTitle16StyleInter.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8.w),
                  Text(
                    sortDesc,
                    overflow: TextOverflow.ellipsis,
                    style: textTitle16StyleInter.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: colordarkGrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 10,
              ),
            ),
            SizedBox(width: 6.w),
          ],
        ),
      ),
    );
  }
}

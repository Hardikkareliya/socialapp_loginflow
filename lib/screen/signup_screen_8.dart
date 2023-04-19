import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:socialapp_loginflow/model/selectionModel.dart';
import 'package:socialapp_loginflow/screen/signup_screen_9.dart';
import 'package:socialapp_loginflow/theme/colors.dart';
import 'package:socialapp_loginflow/theme/style.dart';
import 'package:socialapp_loginflow/utils/constants.dart';
import 'package:socialapp_loginflow/widgets/custom_appbar.dart';
import 'package:socialapp_loginflow/widgets/label_btn.dart';

class SignupScreen8 extends StatefulWidget {
  const SignupScreen8({
    Key? key,
  }) : super(key: key);

  @override
  State<SignupScreen8> createState() => _SignupScreen8State();
}

class _SignupScreen8State extends State<SignupScreen8> with TickerProviderStateMixin {
  List<TopicSelectionModel> topicSelectionArray = [];

  @override
  void initState() {
    super.initState();
    topicSelectionArray.add(TopicSelectionModel(name: 'Mindfulness', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Food', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Dogs', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray
        .add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png', isChecked: checkboxStatus.checked));
    topicSelectionArray.add(TopicSelectionModel(name: 'Food', iconPath: '${imageAssets}food.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}food.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Health', iconPath: '${imageAssets}food.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray
        .add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png', isChecked: checkboxStatus.checked));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray
        .add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png', isChecked: checkboxStatus.checked));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray
        .add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png', isChecked: checkboxStatus.checked));
    topicSelectionArray
        .add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png', isChecked: checkboxStatus.checked));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray
        .add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png', isChecked: checkboxStatus.checked));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
    topicSelectionArray.add(TopicSelectionModel(name: 'Sport', iconPath: '${imageAssets}welcome_screen_image.png'));
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupScreen9(),
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
                'What are 5 topics you enjoy talking about',
                style: textHeadingStyle,
              )),
              SizedBox(height: 50.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(22.w, 0, 22.w, 40.h),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: topicSelectionArray.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: (1 / .26)),
                      itemBuilder: (BuildContext context, int index) {
                        return SelectionTile(
                          title: '${topicSelectionArray[index].name}',
                          iconPath: '${topicSelectionArray[index].iconPath}',
                          onTap: () {},
                          isSelected: topicSelectionArray[index].isChecked == checkboxStatus.checked ? true : false,
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
    required this.iconPath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String iconPath;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.h,
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : colorLightBlack,
          border: Border.all(
            width: 1,
            color: isSelected ? Colors.white : colorLightBlack,
          ),
          borderRadius: BorderRadius.circular(12.w),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath,
                fit: BoxFit.contain,
                height: 14.h,
                width: 14.w,
              ),
              SizedBox(width: 4.w),
              Flexible(
                child: Text(
                  title,
                  textWidthBasis: TextWidthBasis.parent,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: textTitle16StyleInter.copyWith(
                    fontWeight: FontWeight.w400,
                    color: isSelected ? Colors.black : Colors.white,
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

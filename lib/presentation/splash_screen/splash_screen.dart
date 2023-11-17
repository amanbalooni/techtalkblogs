import 'dart:async';
import 'package:aman_s_application6/core/app_export.dart';
import 'package:aman_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            children: [
              Spacer(
                flex: 53,
              ),
              Container(
                height: 134.v,
                width: 243.h,
                decoration: AppDecoration.outlineBlack,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomElevatedButton(
                      height: 107.v,
                      width: 243.h,
                      text: "techtalk",
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.headlineSmallWhiteA700,
                      alignment: Alignment.topCenter,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 39.adaptSize,
                      width: 39.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 53.h),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 46,
              ),
              Text(
                "Tech Blogs on your finger tips!",
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
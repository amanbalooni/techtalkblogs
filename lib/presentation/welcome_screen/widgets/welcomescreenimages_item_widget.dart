import 'package:aman_s_application6/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomescreenimagesItemWidget extends StatelessWidget {
  const WelcomescreenimagesItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgUnsplashY8strkutr4y,
      height: 171.v,
      width: 120.h,
      radius: BorderRadius.circular(
        21.h,
      ),
    );
  }
}

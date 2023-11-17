import 'package:aman_s_application6/core/app_export.dart';
import 'package:aman_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class BlogcardItemWidget extends StatelessWidget {
  final Map<String, dynamic> blogList;
   BlogcardItemWidget({Key? key, required this.blogList})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 246.v,
      width: 198.h,
      decoration: AppDecoration.outlineBlack,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          /*CustomImageView(
            imagePath: ImageConstant.imgUnsplashWumbEbrpjs,
            height: 246.v,
            width: 197.h,
            radius: BorderRadius.circular(
              25.h,
            ),
            alignment: Alignment.center,
          ),*/
          Container(
            height: 246.v,
            width: 197.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image:
                      AssetImage("assets/images/${blogList['image']}"),
                  fit: BoxFit.cover,
                )),
          ),
          CustomElevatedButton(
            width: 103.h,
            text: blogList['tag'],
            margin: EdgeInsets.only(
              left: 15.h,
              bottom: 15.v,
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}

import 'package:aman_s_application6/core/app_export.dart';
import 'package:aman_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:aman_s_application6/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aman_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:aman_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../detail_screen.dart';

class BlogDetailScreen extends StatelessWidget {
  const BlogDetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        /*appBar: _buildAppBar(context),*/
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          child: ListView(
            children: [
              SizedBox(height: 10.v),
              /*Divider(
                indent: 1.h,color: Colors.grey,
              ),*/
              SizedBox(height: 10.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(
                  left: 1.h,
                  right: 43.h,
                ),
                child: Text(
                  "Four things every developer \nshould know",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.54,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatar1,
                      height: 54.adaptSize,
                      width: 54.adaptSize,
                      radius: BorderRadius.circular(
                        8.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 19.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mark Simon",
                            style: CustomTextStyles.bodyLargePrimary,
                          ),
                          SizedBox(height: 9.v),
                          Text(
                            "2h ago",
                            style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.v),
              _buildBlogBannerCard(context),
              SizedBox(height: 21.v),
              SizedBox(
                width: 359.h,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua. Ut enim ad minim veniam, quis\nnostrud exercitation ullamco laboris nisi ut aliquip ex \nea commodo consequat. Duis aute irure dolor in \nreprehenderit in voluptate velit esse cillum dolore eu \nfugiat nulla pariatur. Excepteur sint occaecat \ncupidatat non proident, sunt in culpa qui officia.",
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              SizedBox(
                width: 359.h,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit, sed do eiusmod tempor incididunt ut labore et \ndolore magna aliqua. Ut enim ad minim veniam, quis\nnostrud exercitation ullamco laboris nisi ut aliquip ex \nea commodo consequat. Duis aute irure dolor in \nreprehenderit in voluptate velit esse cillum dolore eu \nfugiat nulla pariatur. Excepteur sint occaecat \ncupidatat non proident, sunt in culpa qui officia.",
                  maxLines: 8,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  /*PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leading: GestureDetector(
        child: Container(
            padding: EdgeInsets.only(left: 16),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16,
            )),
        onTap: () {
          Navigator.pop(
            DetailScreen() as BuildContext,
          );
        },
      ),
      title: Center(
          child: AppbarTitle(
        text: 'Blog Detail',
      )),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellfill,
        ),
      ],
    );
  }*/

  /// Section Widget
  Widget _buildBlogBannerCard(BuildContext context) {
    return Container(
      height: 196.v,
      width: 357.h,
      margin: EdgeInsets.only(left: 1.h),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUnsplashXjxwbfso2f0,
            height: 196.v,
            width: 357.h,
            radius: BorderRadius.circular(
              13.h,
            ),
            alignment: Alignment.center,
          ),
          CustomElevatedButton(
            width: 103.h,
            text: "technology",
            margin: EdgeInsets.only(
              left: 12.h,
              bottom: 17.v,
            ),
            alignment: Alignment.bottomLeft,
          ),
        ],
      ),
    );
  }
}

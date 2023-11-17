import 'package:aman_s_application6/presentation/home_screen/widgets/blogcard_horizontal_widget.dart';
import '../home_screen/widgets/blogcard_item_widget.dart';
import '../home_screen/widgets/thirtytwo_item_widget.dart';
import 'package:aman_s_application6/core/app_export.dart';
import 'package:aman_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:aman_s_application6/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aman_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'map/image_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore today’s",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 26.v),
              _buildThirtyTwo(context),
              SizedBox(height: 28.v),
              _buildBlogCard(context),
              SizedBox(height: 50.v),
              _buildTwentyFive(context),
              SizedBox(height: 19.v),
              _buildBlogHorizontalCard(context),
              // _buildTwentyEight(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Hi Jonathan!",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgBellfill,
          margin: EdgeInsets.all(16.h),
        ),
      ],
    );
  }

  /// Section Widget Round--Card
  Widget _buildThirtyTwo(BuildContext context) {
    return SizedBox(
      height: 100.v,
      child: ListView.separated(
        padding: EdgeInsets.only(right: 42.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 20.h,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return Row(
            children: imageList.map((singlePlace) => ThirtytwoItemWidget(circleList: singlePlace,)).toList(),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBlogCard(BuildContext context) {
    return SizedBox(
      height: 246.v,
      child: ListView.separated(
        padding: EdgeInsets.only(right: 13.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 15.h,
          );
        },
        itemCount: 1,
        itemBuilder: (context, index) {
          return Row(
            children: blogPost.map((singlePlace) => BlogcardItemWidget(blogList: singlePlace,)).toList(),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFive(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Latest News",
            style: theme.textTheme.titleLarge,
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "View More",
              style: CustomTextStyles.bodyLargePrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
 Widget _buildBlogHorizontalCard(BuildContext context){
   return SizedBox(
     height: 200.v,
     child: ListView.separated(
       padding: EdgeInsets.only(right: 13.h),
       scrollDirection: Axis.vertical,
       separatorBuilder: (
           context,
           index,
           ) {
         return SizedBox(
           width: 15.h,
         );
       },
       itemCount: 3,
       itemBuilder: (context, index) {
         return Column(
           children: hBlogPost.map((singlePlace) => BlogCardHorizontalItem(hBlogList: singlePlace,)).toList(),
         );
       },
     ),
   );
 }
}

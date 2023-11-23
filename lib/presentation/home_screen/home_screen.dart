import 'package:aman_s_application6/presentation/home_screen/widgets/blogcard_horizontal_widget.dart';
import '../../widgets/dialog_box.dart';
import '../detail_screen/detail_screen.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text('Explore'),
          automaticallyImplyLeading: false, // This removes the back icon
          actions: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotificationPanel()),
                );
              },
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 16.h, top: 20.h),
          child: ListView(
            children: [
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
/*  PreferredSizeWidget _buildAppBar(BuildContext context) {
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
  }*/

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
            child: TextButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => const DialogBox(),
              ),
              child: Text(
                "View More",
                style: CustomTextStyles.bodyLargePrimary,
              ),
            )
          ),
        ],
      ),
    );
  }

  /// Section Widget
 Widget _buildBlogHorizontalCard(BuildContext context){
   return SizedBox(
     height: 230.v,
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

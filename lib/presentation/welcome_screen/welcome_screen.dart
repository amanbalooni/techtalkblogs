import '../login_screen/login_screen.dart';
import '../welcome_screen/widgets/welcomescreenimages_item_widget.dart';
import 'package:aman_s_application6/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.blue5002,
                appTheme.gray20000,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 72.v),
                _buildWelcomeScreenImages(context),
                SizedBox(height: 78.v),
                _buildWelcomeScreenContent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeScreenImages(BuildContext context) {
    return StaggeredGridView.countBuilder(
      padding: EdgeInsets.only(left: 20, right: 20),
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 4,
      crossAxisSpacing: 18.h,
      mainAxisSpacing: 18.h,
      staggeredTileBuilder: (index) {
        return StaggeredTile.fit(2);
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        List<String> imagePaths = [
          ImageConstant.imgUnsplashY8strkutr4y,
          ImageConstant.imgUnsplashXqlo326eoi4,
          ImageConstant.imgUnsplashWumbEbrpjs,
          ImageConstant.imgimgavatar,
        ];
        return WelcomescreenimagesItemWidget(
          imagePath: imagePaths[index],
          height: 171.v,
          width: 120.h,
          radius: BorderRadius.circular(21.h,),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWelcomeScreenContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 34.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL29,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 296.h,
            margin: EdgeInsets.only(right: 33.h),
            child: Text(
              "Read the articles you want \ninstantly",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineSmall!.copyWith(
                height: 1.54,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 314.h,
            margin: EdgeInsets.only(right: 16.h),
            child: Text(
              "You can read thousands of articles on techtalk\nblogs, save them in the application and share\nthem with your colleagues!",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                height: 1.70,
              ),
            ),
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 10.v,
                margin: EdgeInsets.only(
                  top: 18.v,
                  bottom: 17.v,
                ),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 9,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: theme.colorScheme.onPrimaryContainer,
                    dotHeight: 10.v,
                    dotWidth: 10.h,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginScreen()),
                  );
                },
                child: Container(
                  height: 45.v,
                  width: 75.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 21.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgForward,
                    height: 28.v,
                    width: 30.h,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}

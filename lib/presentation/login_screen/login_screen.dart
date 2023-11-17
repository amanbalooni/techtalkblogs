import 'package:aman_s_application6/core/app_export.dart';
import 'package:aman_s_application6/widgets/custom_elevated_button.dart';
import 'package:aman_s_application6/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../bottom_navigation/bottom_navigation_widget.dart';
import '../home_screen/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 49.v),
              Container(
                height: 134.v,
                width: 243.h,
                decoration: AppDecoration.outlineBlack,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 72.h,
                          vertical: 17.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder53,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "techtalk",
                              style: CustomTextStyles.headlineSmallWhiteA700,
                            ),
                            SizedBox(height: 1.v),
                            Text(
                              "Blogs",
                              style: theme.textTheme.displaySmall,
                            ),
                          ],
                        ),
                      ),
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
              SizedBox(height: 5.v),
              Text(
                "Tech Blogs on your finger tips!",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 39.v),
              Container(
                decoration: AppDecoration.gradientBlueToGray20000.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder29,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 19.v),
                    Text(
                      "Login",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 13.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 31.h,
                        vertical: 30.v,
                      ),
                      decoration: AppDecoration.outlineBlack9001.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL29,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Welcome back",
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                          SizedBox(height: 9.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Sign in with your account",
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email ID",
                              style:
                                  CustomTextStyles.bodyLargeOnPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          CustomTextFormField(
                            controller: emailController,
                          ),
                          SizedBox(height: 23.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Password",
                              style:
                                  CustomTextStyles.bodyLargeOnPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 13.v),
                          CustomTextFormField(
                            controller: passwordController,
                            textInputAction: TextInputAction.done,
                            obscureText: true,
                          ),
                          SizedBox(height: 33.v),
                          _buildLoginButtonRow(context),
                          SizedBox(height: 33.v),
                          Divider(),
                          SizedBox(height: 25.v),
                          Text(
                            "Don’t have an account? Click Here",
                            style: CustomTextStyles.bodyLargePrimary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButtonRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BottomNavigationWidget()),
            );
          },
          height: 63.v,
          width: 143.h,
          text: "Login",
          buttonStyle: CustomButtonStyles.outlineBlackTL31,
          buttonTextStyle: CustomTextStyles.bodyLargeWhiteA700,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 23.v,
            bottom: 20.v,
          ),
          child: Text(
            "Forget Password?",
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}

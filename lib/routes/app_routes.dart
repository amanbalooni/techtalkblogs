import 'package:flutter/material.dart';
import 'package:aman_s_application6/presentation/bottom_navigation/bottom_navigation_widget.dart';
import 'package:aman_s_application6/presentation/home_screen/home_screen.dart';
import 'package:aman_s_application6/presentation/detail_screen/detail_screen.dart';
import 'package:aman_s_application6/presentation/splash_screen/splash_screen.dart';
import 'package:aman_s_application6/presentation/welcome_screen/welcome_screen.dart';
import 'package:aman_s_application6/presentation/login_screen/login_screen.dart';
import 'package:aman_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String bottomNavigationWidget ='/bottom_navigation_widget';

  static const String homeScreen = '/home_screen';

  static const String detailScreen = '/detail_screen';

  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    bottomNavigationWidget: (context) => BottomNavigationWidget(),
    homeScreen: (context) => HomeScreen(),
    detailScreen: (context) => DetailScreen(),
    splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    loginScreen: (context) => LoginScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}

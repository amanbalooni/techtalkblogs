import 'package:aman_s_application6/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomescreenimagesItemWidget extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  final BorderRadiusGeometry radius;
  const WelcomescreenimagesItemWidget({Key? key, required this.imagePath, required this.height, required this.width, required this.radius,})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: radius,
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}

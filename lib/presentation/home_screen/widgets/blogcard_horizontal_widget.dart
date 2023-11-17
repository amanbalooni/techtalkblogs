import 'package:aman_s_application6/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../theme/theme_helper.dart';

class BlogCardHorizontalItem extends StatelessWidget {
  final Map<String, dynamic> hBlogList;
  const BlogCardHorizontalItem({Key? key, required this.hBlogList})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 79.adaptSize,
                width: 79.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 12.v),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(9.h,),
                  image: DecorationImage(image: AssetImage("assets/images/${hBlogList['image']}"),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.h,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hBlogList['title'], style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(
                      width: 217.h,
                      child: Text(hBlogList['description'], maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12, color: Colors.black45, height: 1.5),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:aman_s_application6/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirtytwoItemWidget extends StatelessWidget {
  final Map<String, dynamic> circleList;
  const ThirtytwoItemWidget({Key? key, required this.circleList})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Container(
            height: 75.adaptSize,
            width: 75.adaptSize,
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                borderRadius: BorderRadius.circular(
                  32.h,
                ),
                image: DecorationImage(
                    image: AssetImage("assets/images/${circleList['image']}"),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              circleList['title'],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, color: Colors.black45),
            ),
          ),
        ],
      ),
    );
  }
}

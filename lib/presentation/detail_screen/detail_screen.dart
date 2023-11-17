import 'package:aman_s_application6/core/app_export.dart';
import 'package:aman_s_application6/presentation/detail_screen/widget/blog_detail_post.dart';
import 'package:aman_s_application6/presentation/detail_screen/widget/myblog_post.dart';
import 'package:aman_s_application6/presentation/home_screen/home_screen.dart';
import 'package:aman_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:aman_s_application6/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aman_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:aman_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: BlogPost(
                        profileImageUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        imageUrl: 'https://images.unsplash.com/photo-1682685797507-d44d838b0ac7?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        title: 'My First Blog Title',
                        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...', profileName: 'peterRay', profileType: 'Sponsored',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF456EFE),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => const BlogDetailScreen(),
                      ), child: Text('Read More', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: BlogPost(
                        profileImageUrl: 'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        imageUrl: 'https://images.unsplash.com/photo-1682685797507-d44d838b0ac7?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        title: 'My First Blog Title',
                        description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...', profileName: 'PeterRay', profileType: 'Sponsored',

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xFF456EFE),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextButton(  onPressed: () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => const HomeScreen(),
                      ), child: Text('Read More', style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
              ],
            ),
          ],
        )
      ),
    );
  }
}
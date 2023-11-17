import 'package:flutter/material.dart';

import '../../../theme/theme_helper.dart';
import '../../home_screen/home_screen.dart';

class MyBlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlogPost(
          profileImageUrl: 'profile image',
          profileName: 'profile name',
          profileType: '',
          imageUrl: 'https://via.placeholder.com/400x300', // Replace with your image URL
          title: 'Title of the Blog Post',
          description: 'This is the description of the blog post. Replace this with your content.',
        ),
      ),
    );
  }
}

class BlogPost extends StatelessWidget {
  final String profileImageUrl;
  final String profileName;
  final String profileType;
  final String imageUrl;
  final String title;
  final String description;

  BlogPost(
      {required this.imageUrl, required this.title, required this.description, required this.profileImageUrl, required this.profileName, required this.profileType,});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(profileImageUrl),
            ),
            title: Text(profileName, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            subtitle: Text(profileType, style: TextStyle(fontSize: 12),),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                )),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      width: 80,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'views: 145',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF456EFE),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 18,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text(
                  title,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}

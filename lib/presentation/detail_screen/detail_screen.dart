import 'package:aman_s_application6/core/app_export.dart';
import 'package:aman_s_application6/presentation/detail_screen/widget/blog_detail_post.dart';
import 'package:aman_s_application6/presentation/detail_screen/widget/myblog_post.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text('Article List'),
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
                          profileImageUrl:
                              'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          imageUrl:
                              'https://images.unsplash.com/photo-1682685797507-d44d838b0ac7?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          title: 'My First Blog Title',
                          description:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...',
                          profileName: 'peterRay',
                          profileType: 'Sponsored',
                          icon: Icons.menu,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFF456EFE),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) =>
                                    MyBlogDetailPage(),
                              ),
                              child: Text(
                                'Read More',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: IconButton(
                              icon: Icon(Icons.bookmark_border_outlined),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text('Article Saved!'),
                                    action: SnackBarAction(
                                      label: 'Ok',
                                      textColor: Colors.white,
                                      onPressed: () {
                                        // Code to execute.
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: BlogPost(
                          profileImageUrl:
                              'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          imageUrl:
                              'https://images.unsplash.com/photo-1682695795798-1b31ea040caf?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          title: 'My First Blog Title',
                          description:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...',
                          profileName: 'PeterRay',
                          profileType: 'Sponsored',
                          icon: Icons.menu,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xFF456EFE),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) =>
                                    MyBlogDetailPage(),
                              ),
                              child: Text(
                                'Read More',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(child: Container()),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            child: IconButton(
                              icon: Icon(Icons.bookmark_border_outlined),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text('Article Saved!'),
                                    action: SnackBarAction(
                                      label: 'Ok',
                                      textColor: Colors.white,
                                      onPressed: () {
                                        // Code to execute.
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class MyBlogDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Article Detail'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Container(
        child: BlogDetailScreen(),
      ),
    );
  }
}

class NotificationPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Notification'),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          var list = {
            "https://images.pexels.com/photos/4927361/pexels-photo-4927361.jpeg":"Sandra saved your article",
            "https://images.pexels.com/photos/4850291/pexels-photo-4850291.jpeg":"Changed the Article Title to",
            "https://images.pexels.com/photos/4823732/pexels-photo-4823732.jpeg":"songoficeandfire, who you might know",
            "https://images.pexels.com/photos/5473391/pexels-photo-5473391.jpeg":"itz_sharon like your Article",
          };
          return Container(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(""+list.keys.elementAt(index)),
              ),
              title: Text(
                  list.values.elementAt(index)
              ),
              subtitle: Text(
                '12:25PM',
                style: TextStyle(fontSize: 10),
              ),
              trailing: Icon(Icons.delete),
            ),
          );
        },
      ),
    );
  }
}

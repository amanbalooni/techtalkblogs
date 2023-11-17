import 'package:aman_s_application6/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../../core/utils/image_constant.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> imageUrls = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
  ];
  ProfileScreen({Key? key,}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 30, left: 10, right: 10),
        children: [
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: const GradientBoxBorder(
                      gradient: LinearGradient(colors: [Color(0xFF456EFE), Colors.red]),
                      width: 4,
                    ),
                    image: DecorationImage(
                        image: AssetImage('assets/images/imgavatar.jpg'))),
              ),
              SizedBox(height: 5,),
              Container(
              child: Column(
                children: [
                  Text('Johnathan Banks', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  SizedBox(height: 2,),
                  Text('Creative Content Writer', style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),),
                ],
              ),
              ),
              SizedBox(height: 5,),
              SizedBox(
                width: 359.h,
                child: Column(
                  children: [
                    Text('About me : Hi, I\'m Johnathan Banks. Currently working as Content '
                        'Writer in Multi National Company from 5 years.',
                      textAlign: TextAlign.center,
                      maxLines: 8,
                      overflow: TextOverflow.ellipsis,
                     style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, height: 1.5),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF456EFE),
                  borderRadius: BorderRadius.circular(3),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Followers: 142", style: TextStyle(fontSize: 15, color: Colors.white),),
                    Text("Following: 10", style: TextStyle(fontSize: 15, color: Colors.white),),
                    Text("Articles: 15", style: TextStyle(fontSize: 15, color: Colors.white),)
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Divider( indent: 1.h,color: Color(0xFFf1f1f1),),
              SizedBox(height: 10,),
              SizedBox(
                width: 400,
                height: 400,
                child: ImageGrid(imageUrls: imageUrls),
              ),
            ],
          ),
        ]
      ),
          floatingActionButton: FloatingActionButton(onPressed: () {  },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, size: 15, color: Colors.white,),
                Text('Add', style: TextStyle(color: Colors.white),),
              ],
            ),
            elevation: 1,
            backgroundColor: Color(0xFF456EFE),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    )
    );
  }
}


class ImageGrid extends StatelessWidget {
  final List<String> imageUrls;

  ImageGrid({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: EdgeInsets.all(0),
          child: Image.network(
            imageUrls[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/views/home_page/homePage.dart';

import '../../utils/constants/custome_widgets/App_widget.dart';
import '../../utils/constants/custome_widgets/course_list_widget.dart';
import '../../utils/constants/global.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';
import '../course_preview/CoursePreview.dart';


class Continuelearning extends StatefulWidget {
  const Continuelearning({super.key});

  @override
  State<Continuelearning> createState() => _ContinuelearningState();
}

class _ContinuelearningState extends State<Continuelearning> {

  List<Map<String,dynamic>> courselistitems=[
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design'},
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design'},
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design'},
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidget(customclass: BottomNavigationHomePage(), title: 'Continue Learning',),

      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          children: [

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CoursePreviewPage()));
              },
              child: Container(
                child:  ContinueLearningWidget(courselist: courselistitems,),
              ),
            )

          ],
        ),
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

import '../../utils/constants/custome_widgets/course_list_widget.dart';
import '../../utils/constants/custome_widgets/mycourse_tabbar_list_widget.dart';

class MyCourseTabbarPage extends StatefulWidget {
  const MyCourseTabbarPage({super.key});

  @override
  State<MyCourseTabbarPage> createState() => _MyCourseTabbarPageState();
}

class _MyCourseTabbarPageState extends State<MyCourseTabbarPage> {

  List<Map<String,dynamic>> courselist=[
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design',
      "total": "Total lessons",
      "value":"22/25",
      "view":"VIEW CERTIFICATE",
      "done":"assets/images/rightdone.jpg"
    },
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design',
      "total": "Total lessons",
      "value":"22/25",
      "view":"VIEW CERTIFICATE",
      "done":"assets/images/rightdone.jpg"
    },
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design',
      "total": "Total lessons",
      "value":"22/25",
      "view":"VIEW CERTIFICATE",
      "done":"assets/images/rightdone.jpg"
    },
  ];

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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back,color: Colors.transparent,),
            centerTitle: true,
            title: Text('My Courses',style: TextStyle(fontSize:size.headingFontsize,fontWeight: FontWeight.w500 ),),
            bottom: TabBar(
              indicatorColor: newprimaryColor,
              labelColor: newprimaryColor,
              unselectedLabelColor: darkgray,
              tabs: [
                Tab(child: Text("Ongoing",style: TextStyle(fontSize:size.subtitleFontsize ),),),
                Tab(child: Text("Completed",style: TextStyle(fontSize:size.subtitleFontsize ),),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding:  EdgeInsets.only(left:size.mediumPadding ,right: size.mediumPadding),
                child: Container(
                  child:  ContinueLearningWidget(courselist: courselistitems,),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:size.mediumPadding ,right: size.mediumPadding),
                child: Column(
                  children: [
                    TabbarListCourses(courseitems: courselist,),
                  ],
                ),
              ),

            ],
          ),
        ));
  }
}

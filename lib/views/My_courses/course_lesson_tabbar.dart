import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/global.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';
import '../course_preview/lessons/lesson_custom_widget.dart';
import 'lecture_list.dart';
import 'my_course_page.dart';

class CourselessonTabbar extends StatefulWidget {
  const CourselessonTabbar({super.key});

  @override
  State<CourselessonTabbar> createState() => _CourselessonTabbarState();
}

class _CourselessonTabbarState extends State<CourselessonTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Get.to(MyCourseTabbarPage());
            },
                icon: Icon(Icons.arrow_back),),
            centerTitle: true,
            title:  Text('Courses',style: TextStyle(fontSize:size.headingFontsize,fontWeight: FontWeight.w500 ),),
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

              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: CourseLecturePage(),
                ),
              ),
              Container()


            ],
          ),
        ));
  }
}

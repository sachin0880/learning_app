import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/views/home_page/homePage.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/custome_widgets/mentor_profile_custome.dart';
import '../../utils/constants/global.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';
import '../course_preview/CoursePreview.dart';
import '../course_preview/Review/reviews_section.dart';
import '../course_preview/lessons/lesson_custom_widget.dart';

class MentorDetails extends StatefulWidget {
  const MentorDetails({super.key});

  @override
  State<MentorDetails> createState() => _MentorDetailsState();
}

class _MentorDetailsState extends State<MentorDetails> {

  final List<TutorDetails> tutoritems = [
    TutorDetails("Students", "Language", "156,261", "English"),
    TutorDetails("Last update", "Subtitle", "Feb 2 , 2023", "English , and 5 more"),
    TutorDetails("Level", "Access", "Beginner", "Mobile , Desktop")
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(

          body: Column(
            children: [
              
              SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){Get.to(BottomNavigationHomePage());}, icon: Icon(Icons.arrow_back,
                    color: themeController.isDarkMode.value ? white : black,)),
                    Text("Mentor Details",style: TextStyle(fontSize:size.headingFontsize,fontWeight: FontWeight.w500,
                    color: themeController.isDarkMode.value ? white : black),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.share,
                    color: themeController.isDarkMode.value ? white : black,)),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                     children: [
                       Container(height: 70,
                         decoration: BoxDecoration(shape: BoxShape.circle),
                         child: Image(image: AssetImage("assets/images/manprofile.png"),),
                       ),
                        SizedBox(width: 12,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("John Doe",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w500,
                           color: themeController.isDarkMode.value ? newprimaryColor : black),),
                           Text("Design Expert",style: TextStyle(fontSize:size.contentFontSize,color: darkgray),),
                           Row(
                             children: [
                               Icon(Icons.star, color: themeController.isDarkMode.value ? newprimaryColor : CupertinoColors.systemYellow,
                               size: 18,),
                               SizedBox(width: 5,),
                               Text("4.8",style: TextStyle(fontSize:size.descFontSize,color:
                               themeController.isDarkMode.value ? white : black),),
                               SizedBox(width: 5,),
                               Text("(365 reviews)",style: TextStyle(fontSize:size.descFontSize,color:darkgray ),),
                             ],
                           )
                         ],
                       ),
                     ],
                   ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height: 60,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(shape: BoxShape.circle ,color: gray),
                          child: Icon(Icons.call ,color: newprimaryColor,),
                        ),
                        SizedBox(width: 10,),
                        Container(height: 60,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(shape: BoxShape.circle ,color:gray),
                          child: Icon(Icons.message, color: newprimaryColor,),
                        ),
                      ],
                    )
                  ],
                ),
              ),


              TabBar(
                indicatorColor: newprimaryColor,
                labelColor: newprimaryColor,
                unselectedLabelColor: darkgray,
                tabs: [
                  Tab(child: Text("About",style: TextStyle(fontSize:size.subtitleFontsize ),),),
                  Tab(child: Text("Courses",style: TextStyle(fontSize:size.subtitleFontsize ),),),
                  Tab(child: Text("Reviews",style: TextStyle(fontSize:size.subtitleFontsize ),),),
                ],
              ),

              Expanded(
                child: TabBarView(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 16.0,left: 20,right: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About Course",
                              style: TextStyle(fontWeight: FontWeight.w500,
                              color: themeController.isDarkMode.value ? newprimaryColor : black),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "My wife & I have moved 6 times in the last 25 years. Obviously, we've dealt with many realtors...",
                              style: TextStyle(color: darkgray),
                            ),
                            SizedBox(height: 46),

                            Container(
                              height: 125,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Divider(),
                                  Text(
                                    "Tutor",
                                    style: TextStyle(fontWeight: FontWeight.w500,
                                    color: themeController.isDarkMode.value ? newprimaryColor : black),
                                  ),
                                  MentorProfileCustome(),
                                  Divider(),
                                ],
                              ),
                            ),

                            Text(
                              "Info",
                              style: TextStyle(  fontSize:size.contentFontSize  ,fontWeight: FontWeight.w500,
                              color: themeController.isDarkMode.value ? newprimaryColor : black),
                            ),

                            Container(height: 280,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: tutoritems.length
                                  ,itemBuilder: (BuildContext context, index){
                                return Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            tutoritems[index].t1,
                                            style: TextStyle(fontWeight: FontWeight.w500,color: darkgray,
                                            fontSize: size.contentFontSize),
                                          ),
                                          Text(
                                            tutoritems[index].t2,
                                            style: TextStyle(fontWeight: FontWeight.w500, color: darkgray,
                                            fontSize: size.contentFontSize),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              tutoritems[index].t3,
                                              style: TextStyle( fontSize:size.contentFontSize ,fontWeight: FontWeight.bold,
                                                  color: themeController.isDarkMode.value ? white : black),
                                            ),
                                            Text(
                                              tutoritems[index].t4,
                                              style: TextStyle( fontSize:size.contentFontSize ,fontWeight: FontWeight.bold,
                                                  color:themeController.isDarkMode.value ? white : black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),),



                            SizedBox(height: 20,)

                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        // Center(child: Text("Lessons content here")),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: CourseLessonsPage(),
                            ))
                      ],
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: ReviewsPage(),
                          ),)
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

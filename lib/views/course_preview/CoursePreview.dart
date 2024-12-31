import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';
import 'package:learning_app/views/home_page/homePage.dart';

import '../../utils/constants/custome_widgets/mentor_profile_custome.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';
import '../Review_screens/review_page.dart';
import 'Review/reviews_section.dart';
import 'lessons/lesson_custom_widget.dart';

class CoursePreviewPage extends StatelessWidget {

  final List<TutorDetails> tutoritems = [
    TutorDetails("Students", "Language", "156,261", "English"),
    TutorDetails("Last update", "Subtitle", "Feb 2 , 2023", "English , and 5 more"),
    TutorDetails("Level", "Access", "Beginner", "Mobile , Desktop")
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/meets.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: size.mediumPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){Get.to(BottomNavigationHomePage());},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: white,
                            ),
                            child: Icon(Icons.arrow_back, color: newprimaryColor),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: white,
                              ),
                              child: Icon(Icons.share, color: newprimaryColor),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: white,
                              ),
                              child: Icon(Icons.event_note_sharp, color: newprimaryColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height*.2,
                  left: 0,
                  right: 0,
                  child: Align(
                                alignment: Alignment.center,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: Icon(Icons.play_circle, color: Colors.white),
                      label: Text(
                        "Course Preview",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(left: size.mediumPadding,right: size.mediumPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: themeController.isDarkMode.value ?white : newprimaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "Best Seller",
                          style: TextStyle(color: themeController.isDarkMode.value ? newprimaryColor : white),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.star, color: Colors.amber,size: 18,),
                      SizedBox(width: 4),
                      Text(
                        "4.8",
                        style: TextStyle(fontWeight: FontWeight.w500,
                        color: themeController.isDarkMode.value ? newprimaryColor : black),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "(365 reviews)",
                        style: TextStyle(color: darkgray),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Design Thinking Fundamentals",
                    style: TextStyle(
                      fontSize: size.titleFontsize,
                      fontWeight: FontWeight.w500,
                      color: themeController.isDarkMode.value ? newprimaryColor : black
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.person, size: 16, color: darkgray),
                      SizedBox(width: 4),
                      Text("Robert Green", style: TextStyle(color: darkgray)),
                      SizedBox(width: 16),
                      Icon(Icons.book, size: 16, color: darkgray),
                      SizedBox(width: 4),
                      Text("32 Lessons", style: TextStyle(color: darkgray)),
                      SizedBox(width: 16),
                      Icon(Icons.verified, size: 16, color: darkgray),
                      SizedBox(width: 4),
                      Text("Certificate", style: TextStyle(color: darkgray)),
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: [
                      DefaultTabController(
                        length: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TabBar(
                              labelColor: newprimaryColor,
                              unselectedLabelColor: darkgray,
                              indicatorColor: newprimaryColor,
                              tabs: [
                                Tab(text: "About"),
                                Tab(text: "Lessons"),
                                Tab(text: "Reviews"),
                              ],
                            ),
                            SizedBox(
                              height: 300,
                              child: TabBarView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "About Course",
                                            style: TextStyle(fontWeight: FontWeight.w500,
                                            color: themeController.isDarkMode.value ? white : black),
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
                                                  color: themeController.isDarkMode.value ? white : black),
                                                ),
                                                SizedBox(height: 10,),
                                                GestureDetector(
                                                 onTap: (){Get.to(ReviewSummaryPage());},
                                                    child: MentorProfileCustome()),
                                                Divider(),
                                              ],
                                            ),
                                          ),

                                          Text(
                                            "Info",
                                            style: TextStyle(  fontSize:size.subtitleFontsize  ,fontWeight: FontWeight.w500,
                                            color: themeController.isDarkMode.value ? newprimaryColor : black),
                                          ),

                                         Container(height: 280,
                                          //   padding: EdgeInsets.only(top: 1),
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
                                                       padding: const EdgeInsets.only(top: 10,bottom: 10),
                                                       child: Row(
                                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                         children: [
                                                           Text(
                                                             tutoritems[index].t3,
                                                             style: TextStyle( fontSize:size.contentFontSize ,fontWeight: FontWeight.w500,
                                                                 color: themeController.isDarkMode.value ? oldwhite : black),
                                                           ),
                                                           Text(
                                                             tutoritems[index].t4,
                                                             style: TextStyle( fontSize:size.contentFontSize ,fontWeight: FontWeight.w500,
                                                                 color:themeController.isDarkMode.value ? oldwhite : black ),
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
                                      Container( height: 300 ,
                                          child: CourseLessonsPage())
                                    ],
                                  ),
                                  Column(
                                    children: [
                                    Container(height: 300,
                                        child: ReviewsPage(),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SizedBox(

        child: Container(
          height: 60,
          margin: EdgeInsets.only(left:size.mediumPadding,right: size.mediumPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total Price", style: TextStyle(color:themeController.isDarkMode.value ? darkgray : black)),
                  SizedBox(height: 4),
                  Text(
                    "\$180.00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,color: themeController.isDarkMode.value ? newprimaryColor : black
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeController.isDarkMode.value ? white : newprimaryColor ,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                ),
                child: Text("Enroll Now", style: TextStyle(color: themeController.isDarkMode.value ? newprimaryColor : white,
                fontSize: size.contentFontSize)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TutorDetails{
  final String t1;
  final String t2;
  final String t3;
  final String t4;
  TutorDetails(this.t1, this.t2, this.t3, this.t4);
}
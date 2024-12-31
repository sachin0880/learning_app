import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../views/My_courses/Bookmarked_page.dart';
import '../../../views/My_courses/course_lesson_tabbar.dart';
import '../../../views/My_courses/write_review_page.dart';
import '../colors.dart';
import '../global.dart';

class TabbarListCourses extends StatefulWidget {
  final List courseitems;
  const TabbarListCourses({super.key, required this.courseitems});

  @override
  State<TabbarListCourses> createState() => _TabbarListCoursesState();
}

class _TabbarListCoursesState extends State<TabbarListCourses> {

  // List<Map<String,dynamic>> courselist=[
  //   {"title":'Introduction to Figma' ,
  //     "author": 'Robert Green',
  //     "imageUrl": 'assets/images/meets.jpg',
  //     "img2": 'assets/images/user.png',
  //     "design": 'Design',
  //     "total": "Total lessons",
  //     "value":"22/25",
  //     "view":"VIEW CERTIFICATE",
  //     "done":"assets/images/rightdone.jpg"
  //   },
  //   {"title":'Introduction to Figma' ,
  //     "author": 'Robert Green',
  //     "imageUrl": 'assets/images/meets.jpg',
  //     "img2": 'assets/images/user.png',
  //     "design": 'Design',
  //     "total": "Total lessons",
  //     "value":"22/25",
  //     "view":"VIEW CERTIFICATE",
  //     "done":"assets/images/rightdone.jpg"
  //   },
  //   {"title":'Introduction to Figma' ,
  //     "author": 'Robert Green',
  //     "imageUrl": 'assets/images/meets.jpg',
  //     "img2": 'assets/images/user.png',
  //     "design": 'Design',
  //     "total": "Total lessons",
  //     "value":"22/25",
  //     "view":"VIEW CERTIFICATE",
  //     "done":"assets/images/rightdone.jpg"
  //   },
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: ListView.builder(
          shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
          itemCount: widget.courseitems.length
          ,itemBuilder: (BuildContext context , index){
        var item = widget.courseitems[index];
        return   Card(
          color: Colors.white,
          surfaceTintColor: Colors.transparent,
          elevation: 5,
          margin:  EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: (){
                    Get.to(BookedMarkedPage());
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(item["imageUrl"], width: 120, height: 130, fit: BoxFit.cover),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
                                  color: dgreen.withOpacity(.2)),
                              child: Text(item["design"],style: TextStyle(color: dgreen,fontSize:size.descFontSize ),),
                            ),

                            GestureDetector(
                                onTap:(){Get.to(WriteReviewPage());},
                            child: Text("REVIEW",style: TextStyle(color: newprimaryColor,fontSize:size.descFontSize ),))

                          ],
                        ),
                      ),

                      SizedBox(height: 5),
                      Text(item["title"], style:  TextStyle( fontSize:size.contentFontSize, fontWeight: FontWeight.w500)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          CircleAvatar(radius: 10,backgroundColor: gray ,
                            child: Image(image: AssetImage(item["img2"]),height: 12,color: darkgray,),
                          ),
                          SizedBox(width: 10,),
                          Text(item["author"] ,style: const TextStyle(color: Colors.grey)),
                        ],
                      ),

                      //  SizedBox(height: 10),
                      // Text(cardlist[index].price, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(item["total"],style: TextStyle(fontSize:size.descFontSize, color: darkgray ),),
                          SizedBox(width: 4,),
                          Text(item["value"],style: TextStyle(fontSize:size.descFontSize  ),)
                        ],
                      ),


                      Padding(
                        padding: const EdgeInsets.only(right: 20,bottom: 5,top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: (){Get.to(CourselessonTabbar());},
                                child: Text(item["view"],style: TextStyle(fontSize:size.contentFontSize,color: dgreen , fontWeight: FontWeight.w500 ),)),
                            Image(image: AssetImage(item["done"]),height: 22,)
                          ],
                        ),
                      )
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

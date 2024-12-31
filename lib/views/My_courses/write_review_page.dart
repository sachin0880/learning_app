import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

import 'my_course_page.dart';

class WriteReviewPage extends StatelessWidget {
  WriteReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () { Get.to(MyCourseTabbarPage());},
        ),
        title: Text(
          "Write Review",
          style: TextStyle(color: black,fontSize:size.headingFontsize ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white,
                  boxShadow: [BoxShadow(color: themeController.isDarkMode.value ? Colors.transparent : gray,spreadRadius: 7,blurRadius: 12,
                  offset: Offset(0, 0))]
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: Image.asset("assets/images/manprofile.png"),
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "John Doe",
                                  style: TextStyle(
                                    fontSize: size.contentFontSize,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Design Expert",
                                  style: TextStyle(color: darkgray,fontSize:size.descFontSize ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(height: 35,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                  color: gray),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: newprimaryColor,size: 20,
                                ),
                              ),
                            ),
                            Container( height: 35,
                              decoration: BoxDecoration(shape: BoxShape.circle,
                                  color: gray),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.message,
                                  color: newprimaryColor,size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          "Design Thinking Fundamentals",
                          style: TextStyle(
                            fontSize: size.subtitleFontsize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.play_circle_fill, color: darkgray,size: 18,),
                        SizedBox(width: 8),
                        Text("32 Lessons",style: TextStyle(fontSize: size.descFontSize),),
                        SizedBox(width: 16),
                        Icon(Icons.wind_power,  color: darkgray,size: 18,),
                        SizedBox(width: 8),
                        Text("Certificate",style: TextStyle(fontSize: size.descFontSize)),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow.withOpacity(.5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Text(
                            "Best Seller",
                            style: TextStyle(fontSize:size.descFontSize),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange,size: 18,),
                            Text("4.8",style: TextStyle(fontSize:size.descFontSize,fontWeight: FontWeight.w500 ),),
                            Text("(365 reviews)",style: TextStyle(fontSize:size.descFontSize,color: darkgray ),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("Your overall rating for this course",style: TextStyle(fontSize:size.contentFontSize,
                          color:darkgray  ),),
                      SizedBox(height: 8),
                      Row(
                        children: List.generate(
                          5, (index) => IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.star, color: index < 3 ? Colors.orange : darkgray,size: 35,),
                        ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),
              Text("Add detailed review",style: TextStyle(fontSize:size.contentFontSize ,
              color: themeController.isDarkMode.value ? oldwhite : black)),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Type here...",
                  hintStyle: TextStyle(
                    color: themeController.isDarkMode.value ? oldwhite : black
                  ),
                ),
                style: TextStyle(color: themeController.isDarkMode.value ? oldwhite : black),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text("How was your experience with John?",style: TextStyle(
                        color: themeController.isDarkMode.value ? darkgray : black
                      ),),
                      Row(
                        children: List.generate(
                          5,
                              (index) => IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.star,size: 35,
                              color: index < 3 ? Colors.orange : darkgray,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),
              Text("Add detailed review",style: TextStyle(fontSize:size.contentFontSize,
              color: themeController.isDarkMode.value ? oldwhite : black)),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Type here...",
                ),
                style: TextStyle(color: themeController.isDarkMode.value ? oldwhite : black),
                maxLines: 3,
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: newprimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Submit", style: TextStyle(color: white,fontSize:size.subtitleFontsize )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

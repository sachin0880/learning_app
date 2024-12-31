import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

import '../course_preview/CoursePreview.dart';

class ReviewSummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {Get.to( CoursePreviewPage()); },
        ),
        title: Text(
          'Review Summary',
          style: TextStyle(
            color: Colors.black,fontSize:size.headingFontsize ,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 6,
                    offset: Offset(-2, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft:  Radius.circular(12),
                            bottomRight:  Radius.circular(12)
                          ),
                          child: Image.asset(
                            'assets/images/meets.jpg', // Replace with your asset image path
                            height: 140,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color:white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                'Best Seller',
                                style: TextStyle(
                                  color: newprimaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color:white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child : Icon(Icons.book,color: newprimaryColor,),
                            ),
                          ],
                        ),
                      )


                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Design Thinking Fundamentals',
                          style: TextStyle(
                            fontSize:size.subtitleFontsize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            CircleAvatar(
                                 backgroundColor: gray ,
                              child: Icon(Icons.person,size: 20,),radius: 10,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Robert Green',
                              style: TextStyle(
                                fontSize: size.contentFontSize,
                                color: darkgray,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         Row(
                           children: [
                             Icon(Icons.star, size: 16, color: Colors.orange),
                             SizedBox(width: 4),
                             Text(
                               '4.8',
                               style: TextStyle(
                                 fontSize: 14,
                                 color:black,
                               ),
                             ),
                             SizedBox(width: 5,),
                             Text(
                               '(1.5k reviews)',
                               style: TextStyle(
                                 fontSize: 14,
                                 color: darkgray,
                               ),
                             ),

                           ],
                         ),
                            Text(
                              '\$180.00',
                              style: TextStyle(
                                fontSize:size.subtitleFontsize,
                                fontWeight: FontWeight.bold,
                                color: newprimaryColor,
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
            SizedBox(height: 16),

            // Summary Section
            Divider(),
            SizedBox(height: 8),
            buildSummaryRow('Language', 'English'),
            buildSummaryRow('Lessons', '32'),
            buildSummaryRow('Level', 'Beginner'),
            buildSummaryRow('Amount', '\$180.00'),
            buildSummaryRow('Tax', '\$5.00'),
            Divider(),
            buildSummaryRow('Total', '\$185.00'),

            SizedBox(height: 24),

            // Payment Method
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.payment, color: newprimaryColor, size: 22),
                    SizedBox(width: 8),
                    Text(
                      'Apple Pay',
                      style: TextStyle(
                        fontSize:size.contentFontSize,
                        fontWeight: FontWeight.w500,
                        color: themeController.isDarkMode.value ? white : black
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () { },
                  child: Text(
                    'Change',
                    style: TextStyle(
                      fontSize:size.contentFontSize,
                      color: newprimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 32),

            // Done Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add Done button logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: newprimaryColor,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: white,
                    fontSize:size.subtitleFontsize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSummaryRow(String title, String value,) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize:size.contentFontSize,
              color: darkgray,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize:size.contentFontSize,
               color: themeController.isDarkMode.value ? white : black,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}

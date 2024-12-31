import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/global.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/custome_widgets/App_widget.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';

class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> yesterdayNotifications = [
    {
      "title": "New Course Arrival",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    },
    {
      "title": "Certificate Available",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    },
    {
      "title": "Lesson 3 Unlocked",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppWidget(customclass: BottomNavigationHomePage(), title: 'Notifications',),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: size.mediumPadding,right: size.mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "TODAY",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: size.contentFontSize,
                  color: themeController.isDarkMode.value ? oldwhite : darkgray,
                ),
              ),
               SizedBox(height: 8),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding:  EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage('assets/images/manprofile.png'),
                      ),
                       SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              "Course Review Request",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: size.contentFontSize,
                                color: themeController.isDarkMode.value ? oldwhite : black
                              ),
                            ),
                             SizedBox(height: 4),
                             Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              style: TextStyle(
                                color: themeController.isDarkMode.value ? oldwhite : darkgray,
                              fontSize: size.descFontSize),
                              ),

                             SizedBox(height: 8),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:newprimaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child:  Text(
                                "Leave a Review",
                                style: TextStyle(color: white,
                                fontSize: size.descFontSize),
                              ),
                            ),
                          ],
                        ),
                      ),
                       SizedBox(width: 8),
                       Text(
                        "Just now",
                        style: TextStyle(color:darkgray,
                        fontSize: size.descFontSize),
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 24),
               Text(
                "YESTERDAY",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: size.contentFontSize,
                  color:themeController.isDarkMode.value ? oldwhite : darkgray,
                ),
              ),
               SizedBox(height: 8),
              ...yesterdayNotifications.map(
                    (notification) => Padding(
                  padding:  EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage('assets/images/manprofile.png'),
                      ),
                       SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notification["title"]!,
                              style:  TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize:size.contentFontSize,
                              ),
                            ),
                             SizedBox(height: 4),
                            Text(
                              notification["description"]!,
                              style:  TextStyle(color:themeController.isDarkMode.value ? oldwhite : darkgray,
                              fontSize: size.descFontSize),
                            ),
                          ],
                        ),
                      ),
                       SizedBox(width: 8),
                       Text(
                        "Yesterday",
                        style: TextStyle(color:themeController.isDarkMode.value ? oldwhite : darkgray,
                        fontSize: size.descFontSize),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

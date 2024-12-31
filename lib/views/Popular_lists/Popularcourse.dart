import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import '../../utils/constants/custome_widgets/App_widget.dart';
import '../../utils/constants/custome_widgets/Popular_course_widget.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';


class PopularCoursesScreen extends StatelessWidget {

  PopularCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppWidget(customclass: BottomNavigationHomePage(), title: 'Popular Course',),
      body: PopularCourseWidget(direction: Axis.vertical, hight: 800,)
    );
  }
}

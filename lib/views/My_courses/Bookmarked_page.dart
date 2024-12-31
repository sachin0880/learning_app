import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/custome_widgets/App_widget.dart';
import '../../utils/constants/custome_widgets/Popular_course_widget.dart';
import '../../utils/constants/custome_widgets/button_widget.dart';
import '../../utils/constants/global.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';

class BookedMarkedPage extends StatefulWidget {
  const BookedMarkedPage({super.key});

  @override
  State<BookedMarkedPage> createState() => _BookedMarkedPageState();
}

class _BookedMarkedPageState extends State<BookedMarkedPage> {

  List<String> categoriesList = ["Art", "Coding", "Marketing", "Buisness","Designing"];
  int listcolor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidget(customclass: BottomNavigationHomePage(), title: 'Bookmarked',),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: white,
              boxShadow: [ BoxShadow( color: themeController.isDarkMode.value ? Colors.transparent : gray,spreadRadius: 6,blurRadius: 8,
               offset: Offset(0, 5)  )]),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search)  ,
                  hintText: "Search",
                  border: InputBorder.none
                ),
              ),
            ),
        
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ButtonWidget(btnlist: categoriesList , initialIndex: listcolor),
            ),
        
            SizedBox(height: 10,),
        
            SizedBox(child: Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: PopularCourseWidget(direction: Axis.vertical, hight: 800,),
            )),
        
        
          ],
        ),
      ),

    );
  }
}

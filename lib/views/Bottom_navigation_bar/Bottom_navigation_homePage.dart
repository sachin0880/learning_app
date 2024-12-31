import 'package:flutter/material.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import '../../../utils/constants/colors.dart';
import '../../utils/constants/custome_widgets/Popular_course_widget.dart';
import '../Chatting_screens/chatting_page.dart';
import '../My_courses/my_course_page.dart';
import '../Popular_lists/Popularcourse.dart';
import '../course_preview/CoursePreview.dart';
import '../tabbars_page/tabbar_page.dart';


class BottomNavigationHomePage extends StatefulWidget {
  const BottomNavigationHomePage({super.key});

  @override
  State<BottomNavigationHomePage> createState() => _BottomNavigationHomePageState();
}

class _BottomNavigationHomePageState extends State<BottomNavigationHomePage> {

  List<Widget> screens = [
    HomePage(),
    //PopularCoursesScreen(),
    MyCourseTabbarPage(),
    CoursePreviewPage(),
    ChatScreen(),
    SearchPage()
  ];

  int myindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[myindex] ,
      bottomNavigationBar:  BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'My Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmarks_outlined),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],
        currentIndex: myindex,
        selectedItemColor: newprimaryColor,
        unselectedItemColor: darkgray,
        selectedLabelStyle: TextStyle(height: 1),
        unselectedLabelStyle: TextStyle(height: 1),
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
      ),
    );

  }
}

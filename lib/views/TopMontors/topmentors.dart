import 'package:flutter/material.dart';
import '../../utils/constants/custome_widgets/App_widget.dart';
import '../../utils/constants/custome_widgets/mentor_list_widget.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';
import '../tabbars_page/tabbar_wedgit/Listitem_class.dart';


class TopMentorList extends StatefulWidget {
  const TopMentorList({super.key});

  @override
  State<TopMentorList> createState() => _TopMentorListState();
}

class _TopMentorListState extends State<TopMentorList> {


  List<ListtileClass> listclassitem=[
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidget(customclass: BottomNavigationHomePage(), title: 'Top Mentor',),

      body: SingleChildScrollView(
        child: Column(
          children: [
        
            GestureDetector(
            onTap: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Continuelearning()));
                },
              child: Container( height: 700,
                child: MentorItemList(
                  items: listclassitem,
                ),
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}

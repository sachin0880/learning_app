import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/views/home_page/homePage.dart';

import '../../utils/constants/custome_widgets/App_widget.dart';
import '../../utils/constants/custome_widgets/Popular_course_widget.dart';
import '../../utils/constants/global.dart';
import '../Bottom_navigation_bar/Bottom_navigation_homePage.dart';
import '../Popular_lists/Popularcourse.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  final List<Categorylist> categoryitem =[
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidget(customclass: BottomNavigationHomePage(), title: 'Category',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                  //  Navigator.push(context, MaterialPageRoute(builder: (context)=>PopularCourseWidget(direction: Axis.vertical, hight: 800,)));
                  },
                  child: Container( height: 600,
                    child: GridView.builder(
                        itemCount: categoryitem.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                        itemBuilder: (BuildContext context , index){
                      return Container(
                        child: Column(
                          children: [
                              Container(
                                padding: EdgeInsets.all(12)  ,
                                decoration: BoxDecoration(  color: gray  ,
                                shape: BoxShape.circle
                                ) ,
                                child: Image(image: AssetImage(categoryitem[index].img),height: 40,),),
        
                            // CircleAvatar(
                            //    backgroundColor: darkgray , radius: 55  ,
                            //   child: Image(image: AssetImage(categoryitem[index].img),),
                            // ),
        
                            SizedBox(height: 10,),
                            Text(categoryitem[index].text,style: TextStyle(fontSize:size.subtitleFontsize,
                            color: themeController.isDarkMode.value ? oldwhite : black),)
                          ],
                        ),
                      );
                        }),
                  ),
                )
          ],
        ),
      ),
    );
  }
}

class Categorylist{
  final String img;
  final String text;
  Categorylist(this.img, this.text);
}
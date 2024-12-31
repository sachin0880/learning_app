import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';
import 'package:learning_app/views/Categories/Category.dart';
import 'package:learning_app/views/tabbars_page/tabbar_page.dart';

import '../../utils/constants/custome_widgets/Carousels_widget.dart';
import '../../utils/constants/custome_widgets/Popular_course_widget.dart';
import '../../utils/constants/custome_widgets/catogegires_list_widget.dart';
import '../../utils/constants/custome_widgets/course_list_widget.dart';
import '../../utils/constants/custome_widgets/top_mentor_widget.dart';
import '../Continues_learn/ContinueLearning.dart';
import '../Mentor_details/Mentor_pages.dart';
import '../Popular_lists/Popularcourse.dart';
import '../TopMontors/topmentors.dart';
import '../course_preview/CoursePreview.dart';
import '../notifcation-page/notify_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> itemsimg = [
    'assets/images/catouselimg.png',
    'assets/images/catouselimg.png',
    'assets/images/catouselimg.png'
  ];

  List<gridcustom> griddata =[
    gridcustom("assets/images/maths.png", "Math"),
    gridcustom("assets/images/brush.png", "Art"),
    gridcustom("assets/images/experiment.png", "Science")
  ];


  List<String> carouselitems = [
    'assets/images/catouselimg.png',
    'assets/images/catouselimg.png',
    'assets/images/catouselimg.png'
  ];

  List<gridcustom> categoryitems =[
    gridcustom("assets/images/maths.png", "Math"),
    gridcustom("assets/images/brush.png", "Art"),
    gridcustom("assets/images/experiment.png", "Science"),
    gridcustom("assets/images/maths.png", "Math"),
    gridcustom("assets/images/brush.png", "Art"),
    gridcustom("assets/images/experiment.png", "Science")
  ];

  List<Map<String,dynamic>> Mentorlist = [
    {"image" :"assets/images/manprofile.png", "name":"John Doe" ,},
    {"image" :"assets/images/manprofile.png", "name":"John Doe" ,},
    {"image" :"assets/images/manprofile.png", "name":"John Doe" ,},
    {"image" :"assets/images/manprofile.png", "name":"John Doe" ,},
    {"image" :"assets/images/manprofile.png", "name":"John Doe" ,},
    {"image" :"assets/images/manprofile.png", "name":"John Doe" ,},
    {"image" :"assets/images/manprofile.png", "name":"John Doe" ,},
    {"image" :"assets/images/manprofile.png", "name":"John Doe" ,}
  ];

  List<Map<String,dynamic>> courselistitems=[
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design'},
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design'},
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design'},
    {"title":'Introduction to Figma' ,
      "author": 'Robert Green',
      "imageUrl": 'assets/images/meets.jpg',
      "img2": 'assets/images/user.png',
      "design": 'Design'},
  ];

  List profilimg = [
    {
      'img1': 'assets/images/profile.png',
      't1' : "John Doe"
    },
    {
      'img1': 'assets/images/profile.png',
      't1' : "John Doe"
    },
    {
      'img1': 'assets/images/profile.png',
      't1' : "John Doe"
    },
    {
      'img1': 'assets/images/profile.png',
      't1' : "John Doe"
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( surfaceTintColor: Colors.transparent,
        leadingWidth: 45,
        leading: Image(image: AssetImage('assets/images/menuicons.png',),
        color: themeController.isDarkMode.value ? white : black,),
        title: Row(
          children: [
            Text("Hi, Yash",style: TextStyle(color: themeController.isDarkMode.value ? white : black,
              fontSize:size.headingFontsize,),),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: (){Get.to(NotificationsScreen());},
              child: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),
                  boxShadow:[BoxShadow(
                    color:themeController.isDarkMode.value ? Colors.transparent : gray, blurRadius: 12 ,spreadRadius: 7, offset: Offset(0, 0)
                  )] ,color: white),
                child: Image(image: AssetImage('assets/images/bell.png'),
                color: themeController.isDarkMode.value ? newprimaryColor : black,),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.zero,
                height: 250,
              child: Stack(

                children:[

                  CarouselCustomeWidget(carousellist: carouselitems,),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30,bottom: 25,right: 30),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),
                      color: white , boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 6,
                              offset: Offset(-2, 5),
                            ),
                          ]
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "search",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(5),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                              },
                              child: CircleAvatar(
                                  backgroundColor: black
                                  ,child: Icon(Icons.share,color: white,)),
                            ),
                          ),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                )
                ]
              ),
            ),

        //====================================================================================

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left:size.mediumPadding ,right:size.mediumPadding,top: size.mediumPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: TextStyle(color:themeController.isDarkMode.value ? white : black
                    ,fontSize:size.headingFontsize ,),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Category()));
                      },
                      child: Text("See all",style: TextStyle(color: newprimaryColor,fontSize:size.contentFontSize,),)),
                ],
              ),
            ),
            // CustomGridBox() ,
            SizedBox(height: size.mediumPadding,),

            SizedBox(child: CategoryListWidget(categoryitem: categoryitems,)),

         //===================================================================

            Padding(
              padding:  EdgeInsets.only(left:size.mediumPadding ,right:size.mediumPadding,top: size.mediumPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Course",style: TextStyle(color:themeController.isDarkMode.value ? white : black
                    ,fontSize:size.headingFontsize ,),),
                  GestureDetector( onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PopularCoursesScreen()));
                  },child: Text("See all",style: TextStyle(color: newprimaryColor,fontSize:size.contentFontSize ,),)),
                ],
              ),
            ),

            SizedBox(height: size.mediumPadding,),
            SizedBox(child: GestureDetector(
              onTap: (){Get.to(CoursePreviewPage());},
                child: PopularCourseWidget(direction: Axis.horizontal, hight: 310,))),

        //=================================================================================

            Padding(
              padding:  EdgeInsets.only(left:size.mediumPadding ,right:size.mediumPadding,top: size.mediumPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Mentor",style: TextStyle(color:themeController.isDarkMode.value ? white : black
                    ,fontSize:size.headingFontsize ,),),
                  GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TopMentorList()));
                      },
                  child: Text("See all",style: TextStyle(color: newprimaryColor,fontSize:size.contentFontSize ,),)),
                ],
              ),
            ),

            SizedBox(height: size.mediumPadding,),
            SizedBox(child: GestureDetector(
                onTap: (){Get.to(MentorDetails());},
                child: TopMentorWidget(topmentorlist: Mentorlist,))),

          //==============================================================================================

            Padding(
              padding:  EdgeInsets.only(left:size.mediumPadding ,right:size.mediumPadding,top: size.mediumPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Continue Learniing",style: TextStyle(color:themeController.isDarkMode.value ? white : black,fontSize:size.headingFontsize ,),),
                  GestureDetector(onTap: () {
                    Get.to(Continuelearning());
                  },
                  child: Text("See all",style: TextStyle(color: newprimaryColor,fontSize:size.contentFontSize ,),)),
                ],
              ),
            ),
          //  SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.only(left:size.mediumPadding ,right:size.mediumPadding,top: size.mediumPadding),
              child: ContinueLearningWidget(courselist: courselistitems,),
            ),

        //=======================================================================

          SizedBox(height: 50,)



          ],
        )





          ],
        ),
      ),
    );
  }
}

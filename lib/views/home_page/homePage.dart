import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';
import 'package:learning_app/views/home_page/widgets_homepage/custom_carousel_class/carousel_class.dart';
import 'package:learning_app/views/home_page/widgets_homepage/grid_2/grid2.dart';
import 'package:learning_app/views/home_page/widgets_homepage/grid_view_custom/custom_grid_class.dart';
import 'package:learning_app/views/home_page/widgets_homepage/grid_view_custom/custom_gridview_box.dart';
import 'package:learning_app/views/home_page/widgets_homepage/list_container_homepage/Custom_list_homepage.dart';
import 'package:learning_app/views/home_page/widgets_homepage/profile_cust_list/custom_profil_list.dart';

import '../tabbars_page/tabbar_wedgit/custom_list_items.dart';


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
  
  List<CarouselClasss> carouselitem=[
   CarouselClasss("assets/images/best_seller.png",
       "Design Thinking Fundamentals", "Robert Green", "4.8 (1.5k reviews)", 
       "180.00", "assets/images/user.png", "assets/images/star.png", "assets/images/dollor.png"),
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
     backgroundColor: oldwhite,
      appBar: AppBar( surfaceTintColor: Colors.transparent,
        leading: Image(image: AssetImage('assets/images/menuicons.png'),),
        title: Row(
          children: [
            Text("Hi, Yash",style: TextStyle(color: black,fontSize:size.titleFontsize ),),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),
                boxShadow:[BoxShadow(
                  color: gray, blurRadius: 9 ,spreadRadius: 5, offset: Offset(-1, 2)
                )] ,color: white),
              child: Image(image: AssetImage('assets/images/bell.png')),
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
                height: 250,
              child: Stack(
        
                children:[
                  CarouselSlider(
                      options: CarouselOptions(
                    padEnds: true,
                    autoPlay: true,
                    viewportFraction: 1.0
                  ) ,
                    items: itemsimg.map((item) =>Container(
                      margin: EdgeInsets.only(left: 15,right: 15)
                      ,height: 200,width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration( borderRadius: BorderRadius.circular(12)  ,
                          image: DecorationImage(image:AssetImage(item),fit: BoxFit.fill)
                      ),
                    )).toList()
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),
                      color: white
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "search",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(5),
                            child: CircleAvatar(
                                backgroundColor: black
                                ,child: Icon(Icons.share,color: white,)),
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
        
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: TextStyle(color: black,fontSize:size.titleFontsize,
                      fontWeight: FontWeight.w800 ),),
                  Text("See all",style: TextStyle(color: gold,fontSize:size.titleFontsize,
                      fontWeight: FontWeight.w800 ),),
                ],
              ),
              SizedBox(height: 10,),
              CustomGridBox() ,

 //===================================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Course",style: TextStyle(color: black,fontSize:size.titleFontsize,
                      fontWeight: FontWeight.w800 ),),
                  Text("See all",style: TextStyle(color: gold,fontSize:size.titleFontsize,
                      fontWeight: FontWeight.w800 ),),
                ],
              ),
        
              // Container(height: 800, color: Colors.red,
              //   child: CarouselSlider(
              //       options: CarouselOptions(
              //           padEnds: true,
              //           autoPlay: true,
              //           viewportFraction: 1.0
              //       ) ,
              //       items: carouselitem.map((item) =>Container(
              //         height:600,
              //         margin: EdgeInsets.only(left: 5,right: 5),
              //         decoration: BoxDecoration( borderRadius: BorderRadius.circular(12),
              //         color: Colors.grey),
              //         child: Column(
              //           children: [
              //             Container( height: 90,
              //              // width: MediaQuery.of(context).size.width,
              //               child: Image(image: AssetImage(item.img),height: 50,),
              //             ),
              //             Text(item.Text1, style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w800 ),),
              //             ListTile(leading: Image(image: AssetImage(item.img2),height: 22,),
              //             title: Text(item.Text2),),
              //
              //             ListTile(leading: Image(image: AssetImage(item.img3),height: 22,),
              //               title: Text(item.Text3),
              //             trailing:Text(item.Text4, style: TextStyle(fontSize:size.titleFontsize,
              //                 color: gold, fontWeight: FontWeight.w800 ),)
              //             ),
              //           ],
              //         ),
              //       )).toList()
              //   ),
              // ),
              //
              SizedBox(height: 20,),
             CustomeGridview2(),
              SizedBox(height: 20,),
//=================================================================================

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Mentor",style: TextStyle(color: black,fontSize:size.titleFontsize,
                      fontWeight: FontWeight.w800 ),),
                  Text("See all",style: TextStyle(color: gold,fontSize:size.titleFontsize,
                      fontWeight: FontWeight.w800 ),),
                ],
              ),

              SizedBox(height: 20,),
              CustomProfils(),
              SizedBox(height: 20,),

  //==============================================================================================

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Continue Learniing",style: TextStyle(color: black,fontSize:size.titleFontsize,
                      fontWeight: FontWeight.w800 ),),
                  Text("See all",style: TextStyle(color: gold,fontSize:size.titleFontsize,
                      fontWeight: FontWeight.w800 ),),
                ],
              ),
              SizedBox(height: 20,),
              CoursesTab(),

//=======================================================================
        
            SizedBox(height: 50,)
        
        
        
            ],
          ),
        )
             
            
            
            
        
          ],
        ),
      ),
    );
  }
}

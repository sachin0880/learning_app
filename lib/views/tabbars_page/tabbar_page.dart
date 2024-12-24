import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/views/tabbars_page/tabbar_wedgit/Tabbar_list_item.dart';
import 'package:learning_app/views/tabbars_page/tabbar_wedgit/custom_list_items.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../utils/constants/global.dart';
import '../home_page/widgets_homepage/grid_2/grid2.dart';
import '../home_page/widgets_homepage/list_container_homepage/Custom_list_homepage.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  bool isDarkMode = false;
  List<String> categoriesList = [ "Art","Coding","Marketing","Buisness"];
  int listcolor =0;

  List<String> categoriesList2 = [ "English","German","French","spanish"];
  int listcolor2 =0;

  List<String> categoriesList3 = [ "30 Minutes","60 Minutes","75 Minutes","90 Minutes"];
  int listcolor3 =0;

 final List<String> btnlist =["Reset" , "Apply"];
 RangeValues values =RangeValues(0, 0);
  RangeValues values2 =RangeValues(0, 0);
  int btncolor=0;

  @override
  Widget build(BuildContext context) {

  void bottom(){
  showModalBottomSheet(
    isScrollControlled: true,

      backgroundColor: white
      ,context: context, builder: (context){
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        height: MediaQuery.of(context).size.height*0.9,
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Filter",style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w800 ),)
                  ],),
            
                SizedBox(height: 10,),
                Text("Categories",style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w800 ),)
            
                ,SizedBox(height: 10,)
                , Container(
                    height: 54,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoriesList.length
                        ,itemBuilder: (BuildContext context ,index){
                      return GestureDetector(onTap: (){
                        setState((){
                          listcolor = index;
            
                        });
                      },
                        child: Container(
                          margin: EdgeInsets.only(left: 5,right: 5),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),
                              color: (listcolor == index)? gold : Colors.transparent,
                              border: Border.all(color: (listcolor==index)?Colors.transparent : gold)),
                          child: Text(categoriesList[index],style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w500,
                              color: (listcolor==index)? white : gold),) ,
                        ),
                      );
                    })
                ),
            //================================================================
                SizedBox(height: 15,),
                Text("Price Range",style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w800 ),),
            
                SizedBox(height: 5,),
                RangeSlider(values: values,
                  activeColor: gold,inactiveColor: gray,
                  min: 0,max: 100,
                  onChanged: (value) {
                    setState((){
                      values = value;
                    });
                  },),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("\$20",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800 ),),
                    Text("\$30",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800 ),),
                    Text("\$40",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800 ),),
                    Text("\$50",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800 ),),
                    Text("\$60",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800 ),),
                    Text("\$70",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800 ),),
                  ],
                ),
            //======================================================================
                SizedBox(height: 25,),
                Text("Rating",style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w800 ),),
            
                RangeSlider(values: values2,
                  activeColor: gold,inactiveColor: gray,
                  min: 0,max: 100,
                  onChanged: (value) {
                  setState((){
                    values2 = value;
                  });
            
                },),
            
            
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("1.0",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800 ),),
                      Text("5.0",style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800 ),),
                    ],
                  ),
                ),
            //==================================================================
                SizedBox(height: 20,),
                Text("Language",style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w800 ),)
            
                ,SizedBox(height: 10,)
                , Container(
                    height: 54,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoriesList2.length
                        ,itemBuilder: (BuildContext context ,index){
                      return GestureDetector(onTap: (){
                        setState((){
                          listcolor2 = index;
            
                        });
                      },
                        child: Container(
                          margin: EdgeInsets.only(left: 5,right: 5),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),
                              color: (listcolor2 == index)? gold : Colors.transparent,
                              border: Border.all(color: (listcolor2==index)?Colors.transparent : gold)),
                          child: Text(categoriesList2[index],style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w500,
                              color: (listcolor2==index)? white : gold),) ,
                        ),
                      );
                    })
                ),
            
            //==================================================================
                SizedBox(height: 20,),
                Text("Course Duration",style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w800 ),)
            
                ,SizedBox(height: 10,)
                , Container(
                    height: 54,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoriesList3.length
                        ,itemBuilder: (BuildContext context ,index){
                      return GestureDetector(onTap: (){
                        setState((){
                          listcolor3 = index;
            
                        });
                      },
                        child: Container(
                          margin: EdgeInsets.only(left: 5,right: 5),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 5),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),
                              color: (listcolor3 == index)? gold : Colors.transparent,
                              border: Border.all(color: (listcolor3==index)?Colors.transparent : gold)),
                          child: Text(categoriesList3[index],style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w500,
                              color: (listcolor3==index)? white : gold),) ,
                        ),
                      );
                    })
                ),
            
            
            
            //===================================================================
            
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Container(height: 60,width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: btnlist.length,
                            itemBuilder:(BuildContext context ,index){
                              return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    btncolor = index;
                                    print(btncolor);
                                  });
                                },
                                child: Container( width: 160,
                                  margin: EdgeInsets.only(left: 5,right: 5),
                                  padding: EdgeInsets.only(left: 30,top: 10,bottom: 10,right: 30),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(42),
                                      color: (btncolor==index)?gold : Colors.transparent,
                                  border: Border.all(color: (btncolor==index)?Colors.transparent : gold)),
                                  child:Center(child: Text(btnlist[index],style: TextStyle(fontSize:size.subtitleFontsize,fontWeight: FontWeight.w800,
                                  color: (btncolor==index)?white : gold),)),
                                ),
                              );
                            }),
                      )),

                    ],),
                )
            
              ],
            ),
          ),
        ),
      );
    },);
  });
}

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: oldwhite,
        body: Column(
          children: [
            Container(
              height: 240,
              padding:  EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:10 ,),
                  ListTile(
                    leading: IconButton(
                      icon:  Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: Text("Search",style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w500 ),),
                  trailing: Switch(value: isDarkMode, onChanged: (bool value) {
                    setState(() {
                      isDarkMode = value;
                    });
                    themeController.setThemeMode(value);
                  },),
                  ),

                 Container(
                   margin: EdgeInsets.only(left: 20,right: 20),
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                   color: Colors.white60),
                   child: TextFormField(
                     decoration: InputDecoration(
                       prefixIcon: Icon(Icons.search),
                       hintText: "Search",
                       border: InputBorder.none,
                       suffixIcon: GestureDetector(
                         child: Container(
                           margin: EdgeInsets.all(5),
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                           color: gold),
                           padding: EdgeInsets.all(7),
                           child: Icon(Icons.medication_liquid,color: white,),
                         ),
                         onTap: (){
                           bottom();
                         },
                       )
                     ),
                   ),
                 ),

                 SizedBox(height: 30,),
                 TabBar(
                    labelColor: gold,
                    indicatorColor: gold,
                    unselectedLabelColor: Colors.black,
                    dividerColor: Colors.transparent,
                    tabs: [
                      Tab(child: Text("Course",style: TextStyle(fontSize:size.titleFontsize,color: gold ),),),
                      Tab(child: Text("Mentors",style: TextStyle(fontSize:size.titleFontsize,color: gold ),),),
                    ],
                  ),
                ],
              ),
            ),
            // TabBarView Section
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color:oldwhite,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Results for Design",style: TextStyle(fontSize:size.titleFontsize ),),
                              Text("153 Results Found",style: TextStyle(color: gold),),
                            ],
                          ),
                          TabbarCustom(),
                        ],
                      ),
                    ), // Custom widget for Courses tab
                  ),
                  Container(
                    color: oldwhite,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Results for Design",style: TextStyle(fontSize:size.titleFontsize ),),
                              Text("153 Results Found",style: TextStyle(color: gold),),
                            ],
                          ),
                          ItemTabbarList(),
                        ],
                      ),
                    ), // Custom widget for Mentors tab
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}

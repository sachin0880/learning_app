import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/views/Categories/Category.dart';
import 'package:learning_app/views/tabbars_page/tabbar_wedgit/Listitem_class.dart';
import 'package:learning_app/views/tabbars_page/tabbar_wedgit/Tabbar_list_item.dart';
import 'package:learning_app/views/tabbars_page/tabbar_wedgit/custom_list_items.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/constants/custome_widgets/Popular_course_widget.dart';
import '../../utils/constants/custome_widgets/button_widget.dart';
import '../../utils/constants/custome_widgets/mentor_list_widget.dart';
import '../../utils/constants/global.dart';


class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isDarkMode = false;
  List<String> categoriesList = ["Art", "Coding", "Marketing", "Buisness","Designing"];
  int listcolor = 0;

  @override
  void initState(){
    super.initState();
    setTheme();
  }

  Future<void> setTheme() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isDarkMode = prefs.getBool('isDarkMode')??false;
    });
  }


  List<ListtileClass> listclassitem=[
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),
    ListtileClass("assets/images/manprofile.png", "John Doe", "Design Expert"),

  ];


  List<String> categoriesList2 = ["English", "German", "French", "Hindi" , "spanish",];
  int listcolor2 = 0;

  List<String> categoriesList3 = [
    "30 Minutes",
    "60 Minutes",
    "75 Minutes",
    "90 Minutes"
  ];
  int listcolor3 = 0;

  final List<String> btnlist = ["Reset", "Apply"];
  RangeValues values = RangeValues(0, 0);
  RangeValues values2 = RangeValues(0, 0);
  int btncolor = 0;

  @override
  Widget build(BuildContext context) {
    void bottom() {
      showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: themeController.isDarkMode.value ? black : white,
          context: context,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.84,
                  child: Padding(
                    padding: EdgeInsets.only(left: size.mediumPadding, right: size.mediumPadding),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(height: 10 ,width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(42),
                                      color: newprimaryColor,
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "Filter",
                                    style: TextStyle(
                                        fontSize: size.titleFontsize,
                                        fontWeight: FontWeight.w500,
                                    color: themeController.isDarkMode.value ? oldwhite : black),
                                  ),
                                ],
                              )
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: size.subtitleFontsize,
                                fontWeight: FontWeight.w500,
                            color: themeController.isDarkMode.value ? oldwhite : black),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          ButtonWidget(btnlist: categoriesList , initialIndex: listcolor),
                          //================================================================
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Price Range",
                            style: TextStyle(
                                fontSize: size.subtitleFontsize,
                                fontWeight: FontWeight.w500,
                            color: themeController.isDarkMode.value ? oldwhite : black),
                          ),

                          SizedBox(
                            height: 5,
                          ),
                          RangeSlider(
                            values: values,
                            activeColor: gold,
                            inactiveColor: gray,
                            min: 0,
                            max: 100,
                            onChanged: (value) {
                              setState(() {
                                values = value;
                              });
                            },
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "\$20",
                                style: TextStyle(
                                    fontSize: size.subtitleFontsize,
                                    fontWeight: FontWeight.w500,
                                color: themeController.isDarkMode.value ? darkgray : black),
                              ),
                              Text(
                                "\$30",
                                style: TextStyle(
                                    fontSize: size.subtitleFontsize,
                                    fontWeight: FontWeight.w500,
                                color: themeController.isDarkMode.value ? darkgray : black),
                              ),
                              Text(
                                "\$40",
                                style: TextStyle(
                                    fontSize: size.subtitleFontsize,
                                    fontWeight: FontWeight.w500,
                                color: themeController.isDarkMode.value ? darkgray : black),
                              ),
                              Text(
                                "\$50",
                                style: TextStyle(
                                    fontSize: size.subtitleFontsize,
                                    fontWeight: FontWeight.w500,
                                color: themeController.isDarkMode.value ? darkgray : black),
                              ),
                              Text(
                                "\$60",
                                style: TextStyle(
                                    fontSize: size.subtitleFontsize,
                                    fontWeight: FontWeight.w500,
                                color: themeController.isDarkMode.value ? darkgray : black),
                              ),
                              Text(
                                "\$70",
                                style: TextStyle(
                                    fontSize: size.subtitleFontsize,
                                    fontWeight: FontWeight.w500,
                                color: themeController.isDarkMode.value ? darkgray : black),
                              ),
                            ],
                          ),
                          //======================================================================
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Rating",
                            style: TextStyle(
                                fontSize: size.subtitleFontsize,
                                fontWeight: FontWeight.w500,
                            color: themeController.isDarkMode.value ? oldwhite : black),
                          ),

                          RangeSlider(
                            values: values2,
                            activeColor: gold,
                            inactiveColor: gray,
                            min: 0,
                            max: 100,
                            onChanged: (value) {
                              setState(() {
                                values2 = value;
                              });
                            },
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "1.0",
                                  style: TextStyle(
                                      fontSize: size.subtitleFontsize,
                                      fontWeight: FontWeight.w500,
                                  color: themeController.isDarkMode.value ? darkgray : black),
                                ),
                                Text(
                                  "5.0",
                                  style: TextStyle(
                                      fontSize: size.subtitleFontsize,
                                      fontWeight: FontWeight.w500,
                                  color: themeController.isDarkMode.value ? darkgray : black),
                                ),
                              ],
                            ),
                          ),
                          //==================================================================
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Language",
                            style: TextStyle(
                                fontSize: size.subtitleFontsize,
                                fontWeight: FontWeight.w500,
                            color: themeController.isDarkMode.value ? oldwhite : black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ButtonWidget(btnlist: categoriesList2 , initialIndex: listcolor2),

                          //==================================================================
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Course Duration",
                            style: TextStyle(
                                fontSize: size.subtitleFontsize,
                                fontWeight: FontWeight.w500,
                            color: themeController.isDarkMode.value ? oldwhite : black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ButtonWidget(btnlist: categoriesList3 , initialIndex: listcolor3),

                          //===================================================================

                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    child: Container(
                                      //color: Colors.red,
                                  height: 40,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: btnlist.length,
                                      itemBuilder:
                                          (BuildContext context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              btncolor = index;
                                              print(btncolor);
                                            });
                                          },
                                          child: Container(
                                            width: 150,
                                            margin: EdgeInsets.only(
                                                left: 10, right: 5),
                                            padding: EdgeInsets.only(
                                                left: 20, top: 10,
                                                bottom: 10, right: 20),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(42),
                                                color: (btncolor == index)
                                                    ? gold
                                                    : Colors.transparent,
                                                border: Border.all(
                                                    color: (btncolor == index)
                                                        ? Colors.transparent
                                                        : gold)),
                                            child: Center(
                                                child: Text(
                                              btnlist[index],
                                              style: TextStyle(
                                                  fontSize:
                                                      size.contentFontSize,
                                                  fontWeight: FontWeight.w800,
                                                  color: (btncolor == index)
                                                      ? white
                                                      : gold),
                                            )),
                                          ),
                                        );
                                      }),
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          });
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            SafeArea(
              child: Container(
                height: 195,
                padding: EdgeInsets.only(left: size.mediumPadding,right: size.mediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

              
                    Row(
                      children: [
                        GestureDetector(
                              onTap: (){

                              }  ,
                            child: Icon(Icons.arrow_back,color:themeController.isDarkMode.value ? white : black,)),
                        SizedBox(width: 20,),
                        Text(
                          "Search",
                          style: TextStyle(
                              fontSize: size.subtitleFontsize,
                              fontWeight: FontWeight.w500,
                              color:
                              themeController.isDarkMode.value ? white : black),
                        ),
                        SizedBox(width: 120,),
                        Switch(
                          value: isDarkMode,
                          onChanged: (bool value) {
                            setState(() {
                              isDarkMode = value;
                            });
                            themeController.setThemeMode(value);
                          },
                        ),
              
                      ],
                    ),
              
                    // ListTile(
                    //   leading: IconButton(
                    //     icon: Icon(
                    //       Icons.arrow_back,
                    //       color: themeController.isDarkMode.value ? white : black,
                    //     ),
                    //     onPressed: () {
                    //       Navigator.pop(context);
                    //     },
                    //   ),
                    //   title: Text(
                    //     "Search",
                    //     style: TextStyle(
                    //         fontSize: size.titleFontsize,
                    //         fontWeight: FontWeight.w500,
                    //         color:
                    //             themeController.isDarkMode.value ? white : black),
                    //   ),
                    //   trailing: Switch(
                    //     value: isDarkMode,
                    //     onChanged: (bool value) {
                    //       setState(() {
                    //         isDarkMode = value;
                    //       });
                    //       themeController.setThemeMode(value);
                    //     },
                    //   ),
                    // ),
                    Container(
                     // margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: themeController.isDarkMode.value
                              ? Colors.white
                              : gray),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,
                                color: themeController.isDarkMode.value
                                    ? newprimaryColor
                                    : newprimaryColor),
                            hintText: "Search",
                            hintStyle: TextStyle(
                                color: themeController.isDarkMode.value
                                    ? newprimaryColor
                                    : newprimaryColor),
                            border: InputBorder.none,
                            suffixIcon: GestureDetector(
                              child: Container(
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: themeController.isDarkMode.value
                                        ? newprimaryColor
                                        : newprimaryColor),
                                padding: EdgeInsets.all(7),
                                child: Icon(
                                  Icons.medication_liquid,
                                  color: white,
                                ),
                              ),
                              onTap: () {
                                bottom();
                              },
                            )),
                      ),
                    ),
              
                    SizedBox(height: 5,),
                    TabBar(
                      labelColor: newprimaryColor,
                      indicatorColor: newprimaryColor,
                      unselectedLabelColor: Colors.black,
                      dividerColor: Colors.transparent,
                      tabs: [
                        Tab(
                          child: Text(
                            "Course",
                            style: TextStyle(
                                fontSize: size.subtitleFontsize,
                                color: newprimaryColor),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Mentors",
                            style: TextStyle(
                                fontSize: size.subtitleFontsize,
                                color: newprimaryColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // TabBarView Section
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Results for Design",
                                  style: TextStyle(
                                    fontSize: size.contentFontSize,
                                      color: themeController.isDarkMode.value
                                          ? white
                                          : black
                                  ),
                                ),
                                Text(
                                  "153 Results Found",
                                  style: TextStyle(
                                      fontSize: size.contentFontSize,
                                      color: themeController.isDarkMode.value
                                          ? Colors.white
                                          : gold),
                                ),
                              ],
                            ),
                          ),

                          PopularCourseWidget(direction: Axis.vertical, hight: 700,),

                        ],
                      ),
                    ), // Custom widget for Courses tab
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Results for Design",
                                  style: TextStyle(
                                      fontSize: size.contentFontSize,
                                      color: themeController.isDarkMode.value
                                          ? white
                                          : black
                                  ),
                                ),
                                Text(
                                  "153 Results Found",
                                  style: TextStyle(
                                      fontSize: size.contentFontSize,
                                      color: themeController.isDarkMode.value
                                          ? Colors.white
                                          : gold),
                                ),
                              ],
                            ),
                          ),

                          MentorItemList(
                            items: listclassitem,
                          ),

                          SizedBox(height:100 ,)
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

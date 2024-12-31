import 'package:flutter/material.dart';

import '../colors.dart';
import '../global.dart';

class MentorProfileCustome extends StatefulWidget {
  const MentorProfileCustome({super.key});

  @override
  State<MentorProfileCustome> createState() => _MentorProfileCustomeState();
}

class _MentorProfileCustomeState extends State<MentorProfileCustome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Row(
         children: [
           Container( height: 60,
               decoration: BoxDecoration(shape: BoxShape.circle)
               ,child: Image(image: AssetImage("assets/images/manprofile.png"),)),
           SizedBox(width: 10,),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text("John Doe",style: TextStyle(fontSize:size.subtitleFontsize ,fontWeight: FontWeight.w500 ,
                   color: themeController.isDarkMode.value ? newprimaryColor : black),),
               Text("Design Expert" ,style: TextStyle(fontSize:size.contentFontSize, color: darkgray ),),
             ],
           ),
         ],
       ),

        Container(width: 90,
          //color: Colors.red,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,color: gray,

                ),
                child: Icon(Icons.phone,color: newprimaryColor,),
              ),
              SizedBox(width: 10,),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,color: gray
                ),
                child: Icon(Icons.message,color: newprimaryColor,),
              ),
            ],
          ),
        ),

      ],
    );



    //   ListTile(
    //   leading: Container( height: 50,
    //       decoration: BoxDecoration(shape: BoxShape.circle)
    //       ,child: Image(image: AssetImage("assets/images/manprofile.png"),)),
    //   title: Text("John Doe",style: TextStyle(fontSize:size.subtitleFontsize ,fontWeight: FontWeight.w500 ,
    //       color: themeController.isDarkMode.value ? newprimaryColor : black),),
    //   subtitle: Text("Design Expert" ,style: TextStyle(fontSize:size.contentFontSize, color: darkgray ),),
    //   trailing:   Container(width: 90,
    //     //color: Colors.red,
    //     child: Row(
    //       children: [
    //         Container(
    //           padding: EdgeInsets.all(6),
    //           decoration: BoxDecoration(
    //             shape: BoxShape.circle,color: gray,
    //
    //           ),
    //           child: Icon(Icons.phone,color: newprimaryColor,),
    //         ),
    //         SizedBox(width: 10,),
    //         Container(
    //           padding: EdgeInsets.all(6),
    //           decoration: BoxDecoration(
    //               shape: BoxShape.circle,color: gray
    //           ),
    //           child: Icon(Icons.message,color: newprimaryColor,),
    //         ),
    //       ],
    //     ),
    //   ),
    // );;
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/views/home_page/widgets_homepage/profile_cust_list/profil_class.dart';

import '../../../../utils/constants/global.dart';
class CustomProfils extends StatefulWidget {
  const CustomProfils({super.key});

  @override
  State<CustomProfils> createState() => _CustomProfilsState();
}

class _CustomProfilsState extends State<CustomProfils> {
  
  List<profileclass> profilitems=[
    profileclass("assets/images/notify3.png", "John Doe"),
    profileclass("assets/images/notify3.png", "John Doe"),
    profileclass("assets/images/notify3.png", "John Doe"),
    profileclass("assets/images/notify3.png", "John Doe"),
    profileclass("assets/images/notify3.png", "John Doe"),
    profileclass("assets/images/notify3.png", "John Doe"),
    profileclass("assets/images/notify3.png", "John Doe"),
    profileclass("assets/images/notify3.png", "John Doe"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.zero,
      width: MediaQuery.of(context).size.width,
      child:    ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        children: profilitems.map((item) => Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                ClipRRect(
                borderRadius: BorderRadius.circular(42),
                  child: Image(image: AssetImage(item.img),fit:BoxFit.contain,height: 84,),
                ),
                Text(item.text1, style: TextStyle(fontSize:size.subtitleFontsize ),)
              ],
            ),
          ),
        )).toList()
        ,
      )
    );
  }
}


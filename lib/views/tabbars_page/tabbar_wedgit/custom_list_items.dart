import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';

import '../../../utils/constants/global.dart';
import '../../home_page/widgets_homepage/custom_carousel_class/carousel_class.dart';

class TabbarCustom extends StatefulWidget {
  const TabbarCustom({super.key});

  @override
  State<TabbarCustom> createState() => _TabbarCustomState();
}

class _TabbarCustomState extends State<TabbarCustom> {

  List<CarouselClasss> carouselitem=[
    CarouselClasss("assets/images/best_seller.png",
        "Design Thinking Fundamentals", "Robert Green", "4.8 (1.5k reviews)",
        "180.00", "assets/images/user.png", "assets/images/star.png", "assets/images/dollor.png"),

    CarouselClasss("assets/images/best_seller.png",
        "Design Thinking Fundamentals", "Robert Green", "4.8 (1.5k reviews)",
        "180.00", "assets/images/user.png", "assets/images/star.png", "assets/images/dollor.png"),

    CarouselClasss("assets/images/best_seller.png",
        "Design Thinking Fundamentals", "Robert Green", "4.8 (1.5k reviews)",
        "180.00", "assets/images/user.png", "assets/images/star.png", "assets/images/dollor.png"),

    CarouselClasss("assets/images/best_seller.png",
        "Design Thinking Fundamentals", "Robert Green", "4.8 (1.5k reviews)",
        "180.00", "assets/images/user.png", "assets/images/star.png", "assets/images/dollor.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container( height: 680,
      child: ListView.builder(
            itemCount: carouselitem.length  ,
          itemBuilder: (BuildContext context, index){
             return Padding(
               padding: const EdgeInsets.only(bottom: 20,top: 20),
               child: Container(
                 padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   color: white
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Image(image: AssetImage(carouselitem[index].img)),
                     SizedBox(height: 10,),
                     Text(carouselitem[index].Text1,style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w500 ),),

                     ListTile(
                       leading: Image(image: AssetImage(carouselitem[index].img2),height: 18,),
                       title: Text(carouselitem[index].Text2),
                     ),
                     ListTile(
                       leading: Image(image: AssetImage(carouselitem[index].img3),height: 18,),
                       title: Text(carouselitem[index].Text3),
                     )

                   ],
                 ),
               ),
             );
      }),
    );
  }
}

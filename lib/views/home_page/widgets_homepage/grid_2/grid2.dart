import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/global.dart';
import '../custom_carousel_class/carousel_class.dart';

class CustomeGridview2 extends StatefulWidget {
  const CustomeGridview2({super.key});

  @override
  State<CustomeGridview2> createState() => _CustomeGridview2State();
}

class _CustomeGridview2State extends State<CustomeGridview2> {

  List<CarouselClasss> carouselitem=[
    CarouselClasss("assets/images/best_seller.png",
        "Design Thinking Fundamentals", "Robert Green", "4.8 (1.5k reviews)",
        "180.00", "assets/images/user.png", "assets/images/star.png", "assets/images/dollor.png"),
   ];


  @override
  Widget build(BuildContext context) {
    return  Container(height: 330,
       padding: EdgeInsets.only(top: 15,left: 10,right: 10),
       decoration: BoxDecoration(color: white,
       borderRadius: BorderRadius.circular(22)),
      child: ListView.builder(
          itemCount: carouselitem.length,
          physics: NeverScrollableScrollPhysics(),shrinkWrap: true
          ,itemBuilder: (BuildContext context ,index){
        return Container(
          margin: EdgeInsets.only(left: 5,right: 5),
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(12) ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image(image: AssetImage(carouselitem[index].img),),
              ),
              SizedBox(height: 20,),
              Text(carouselitem[index].Text1, style: TextStyle(fontSize:size.titleFontsize,fontWeight: FontWeight.w800 ),),

              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image(image: AssetImage(carouselitem[index].img2),height: 19,),
                title: Text(carouselitem[index].Text2),),

              ListTile(
                  contentPadding: EdgeInsets.zero
                  ,leading: Image(image: AssetImage(carouselitem[index].img3),height: 20,),
                  title: Text(carouselitem[index].Text3),
                  trailing: Text("\$${carouselitem[index].Text4}",style: TextStyle(color: gold,
                      fontSize:size.titleFontsize ),)
              ),
            ],
          ),
        );
      }),
    );
  }
}

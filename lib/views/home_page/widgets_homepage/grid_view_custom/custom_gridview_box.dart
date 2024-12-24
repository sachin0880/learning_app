import 'package:flutter/cupertino.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';


import 'custom_grid_class.dart';

class CustomGridBox extends StatefulWidget {
  const CustomGridBox({super.key});

  @override
  State<CustomGridBox> createState() => _CustomGridBoxState();
}

class _CustomGridBoxState extends State<CustomGridBox> {

  List<gridcustom> griddata =[
    gridcustom("assets/images/maths.png", "Math"),
    gridcustom("assets/images/brush.png", "Art"),
    gridcustom("assets/images/experiment.png", "Science")
  ];

  @override
  Widget build(BuildContext context) {
    return Container( height: 140,
      padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
      child: GridView.builder(
           itemCount: griddata.length  ,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
          mainAxisSpacing: 10,crossAxisSpacing: 12),
          itemBuilder: (BuildContext context ,index){
             return Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12),color: white,
                 boxShadow: [BoxShadow(
                   color: gray ,spreadRadius: 2, blurRadius: 8,offset: Offset(-2, 2)
                 )]
               ),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Image(image: AssetImage(griddata[index].img),height: 63,),
                   Text(griddata[index].text1 , style: TextStyle(fontSize:size.subtitleFontsize,color: black,
                   fontWeight: FontWeight.w800),)
                 ],
               ),
             );
          }),
    );
  }
}

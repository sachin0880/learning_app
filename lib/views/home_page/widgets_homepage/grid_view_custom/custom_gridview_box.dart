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
    gridcustom("assets/images/experiment.png", "Science"),
    gridcustom("assets/images/maths.png", "Math"),
    gridcustom("assets/images/brush.png", "Art"),
    gridcustom("assets/images/experiment.png", "Science")
  ];

  @override
  Widget build(BuildContext context) {
    return Container( height: 160,
      padding: EdgeInsets.only(top: 10,bottom: 10,left: 0,right: 0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: griddata.length,
          itemBuilder: (BuildContext context , index){
            return  Padding(
              padding: const EdgeInsets.only(left: 5,right: 5),
              child: Container(
                padding: EdgeInsets.only(left: 30,right: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),color: white,
                    boxShadow: [BoxShadow(
                        color: gray,spreadRadius: 2, blurRadius: 8,offset: Offset(-2, 2)
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
              ),
            );
          }
      )
    );
  }
}

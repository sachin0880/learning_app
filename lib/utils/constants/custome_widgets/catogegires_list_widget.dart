import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/global.dart';

import '../colors.dart';

class CategoryListWidget extends StatefulWidget {
  final List categoryitem;
  const CategoryListWidget({super.key, required this.categoryitem});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container( height: 120,
        padding: EdgeInsets.only(top: 5,bottom: 5,left: 0,right: 0),
        child: ListView.builder(
            itemCount: widget.categoryitem.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context , index){
              var items = widget.categoryitem[index];
              return Container(
                margin: EdgeInsets.only(left: index==0 ? size.mediumPadding : size.smallPadding,
                    right: (index== widget.categoryitem.length-1)?size.mediumPadding:0   ,bottom: 5,top: 5),
                padding: EdgeInsets.only(left: 12,right: 12,top: 10,bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),color: white,
                    boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.3),
                        blurRadius: 6,
                        offset: Offset(-2, 2),
                      ),
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(image: AssetImage(items.img),height: 55,),
                    Text(items.text1 , style: TextStyle(fontSize:12.0,color: black, ),)
                  ],
                ),
              );
            })
    );
  }
}

class gridcustom {
  final String img;
  final String text1;
  gridcustom(this.img, this.text1);
}
import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';

import '../../utils/constants/global.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  final List<Categorylist> categoryitem =[
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),
    Categorylist("assets/images/brush.png", "Art"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle:true,
        title:Text("Category",style: TextStyle(fontSize:size.titleFontsize ),),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
              Container( height: 600,
                child: GridView.builder(
                    itemCount: categoryitem.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                    itemBuilder: (BuildContext context , index){
                  return Container(
                    child: Column(
                      children: [
                          Container(
                            padding: EdgeInsets.all(12)  ,
                            decoration: BoxDecoration(  color: gray  ,
                            shape: BoxShape.circle
                            ) ,
                            child: Image(image: AssetImage(categoryitem[index].img),height: 40,),),
                        
                        // CircleAvatar(
                        //    backgroundColor: darkgray , radius: 55  ,
                        //   child: Image(image: AssetImage(categoryitem[index].img),),
                        // ),

                        Text(categoryitem[index].text)
                      ],
                    ),
                  );
                    }),
              )
        ],
      ),
    );
  }
}

class Categorylist{
  final String img;
  final String text;
  Categorylist(this.img, this.text);
}
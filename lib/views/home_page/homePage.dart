import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> itemsimg = [

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage('assets/images/menuicons.png'),),
        title: Text("Hi, Ofspace",style: TextStyle(color: black,fontSize:size.titleFontsize ),),
        actions: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),
              boxShadow:[BoxShadow(
                color: gray, blurRadius: 7 ,spreadRadius: 12.0, offset: Offset(5, 5)
              )] ,color: white),
            child: Image(image: AssetImage('assets/images/bell.png')),
          )
        ],
      ),
      body: Column(
        children: [

          CarouselSlider(options: CarouselOptions(autoPlay: true,padEnds: false) ,

              items: imgitem.map((item) =>Padding(
                padding: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
                child: Container( height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image:AssetImage(item),fit: BoxFit.fill)
                  ),
                ),
              )).toList()
          ),

        ],
      ),
    );
  }
}

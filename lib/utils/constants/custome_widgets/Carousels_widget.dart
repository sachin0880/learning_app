import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/global.dart';

class CarouselCustomeWidget extends StatefulWidget {
  final List carousellist;
  const CarouselCustomeWidget({super.key, required this.carousellist});

  @override
  State<CarouselCustomeWidget> createState() => _CarouselCustomeWidgetState();
}

class _CarouselCustomeWidgetState extends State<CarouselCustomeWidget> {
  @override
  Widget build(BuildContext context) {
    return   CarouselSlider(
        options: CarouselOptions(
            padEnds: true,
            autoPlay: true,
            viewportFraction: 1.0
        ) ,
        items: widget.carousellist.map((item) =>Container(
          margin: EdgeInsets.only(left: size.mediumPadding,right:size.mediumPadding)
          ,height: 200,width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(12)  ,
              image: DecorationImage(image:AssetImage(item),fit: BoxFit.fill)
          ),
        )).toList()
    );
  }
}


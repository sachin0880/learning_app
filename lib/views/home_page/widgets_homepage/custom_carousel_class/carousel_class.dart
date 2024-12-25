import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselClasss{
  final String img;
  final String img2;
  final String img3;
  final String img4;
  final String Text1;
  final String Text2;
  final String Text3;
  final String Text4;
  CarouselClasss(this.img, this.Text1, this.Text2, this.Text3, this.Text4, this.img2, this.img3, this.img4);
}


class listcustomeClasss {
  final String img;
  final String img2;
  final String Text1;
  final String Text2;
  final String Text3;
  listcustomeClasss(this.img, this.img2, this.Text1, this.Text2, this.Text3);

}



class CustomCarouselSlider extends StatefulWidget {
  final List itemsimg;
  const CustomCarouselSlider({super.key, required this.itemsimg});

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
        options: CarouselOptions(
            padEnds: true,
            autoPlay: true,
            viewportFraction: 1.0
        ) ,
        items: widget.itemsimg.map((item) =>Container(
          margin: EdgeInsets.only(left: 15,right: 15)
          ,height: 200,width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(12)  ,
              image: DecorationImage(image:AssetImage(item),fit: BoxFit.fill)
          ),
        )).toList()
    );
  }
}

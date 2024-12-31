import 'package:flutter/material.dart';

import '../colors.dart';
import '../global.dart';

class TopMentorWidget extends StatefulWidget {
  final List topmentorlist;
  const TopMentorWidget({super.key, required this.topmentorlist});

  @override
  State<TopMentorWidget> createState() => _TopMentorWidgetState();
}

class _TopMentorWidgetState extends State<TopMentorWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 95,
        padding: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        child:    ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
           itemCount: widget.topmentorlist.length,
          itemBuilder: (context, index) {
            var item = widget.topmentorlist[index];
            return Container(
              margin: EdgeInsets.only(left: index==0 ? size.mediumPadding : size.smallPadding,
                  right: (index== widget.topmentorlist!.length-1)?size.mediumPadding:0   ,bottom: 5,top: 5),
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage(item["image"]),fit:BoxFit.contain,height: 64,),
                    ),
                    Text(item["name"], style: TextStyle(fontSize:size.descFontSize ,
                      color: themeController.isDarkMode.value ? white : black,),)
                  ],
                ),
              ),
            );
          },
        )
    );
  }
}

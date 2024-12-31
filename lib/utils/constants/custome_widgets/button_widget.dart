import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

class ButtonWidget extends StatefulWidget {
  final List<String> btnlist;
  final int initialIndex;


  const ButtonWidget({
    Key? key,
    required this.btnlist,
    required this.initialIndex,
  }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: 34,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.btnlist.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.only(top: 2,bottom: 2,left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: (selectedIndex == index)
                    ? newprimaryColor// Selected color
                    : Colors.transparent,
                border: Border.all(
                  color: (selectedIndex == index)
                      ? newprimaryColor
                      : newprimaryColor,
                ),
              ),
              child: Center(
                child: Text(
                  widget.btnlist[index],
                  style: TextStyle(
                    fontSize:size.contentFontSize,
                    fontWeight: FontWeight.w500,
                    color: (selectedIndex == index)
                        ? Colors.white
                        : newprimaryColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

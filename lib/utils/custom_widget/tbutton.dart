import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';

import '../constants/global.dart';

class Tbutton extends StatelessWidget {
  final String text;

   Tbutton({super.key, required this.text,  required this.btnClick});

  final Function btnClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>btnClick(),
      child: Container(
        height: size.tbutton_hei,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: newprimaryColor,
          borderRadius: BorderRadius.circular(
            size.tradius_large,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

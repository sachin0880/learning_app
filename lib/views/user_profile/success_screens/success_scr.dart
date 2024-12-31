import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import 'package:lottie/lottie.dart';
import '../../../utils/constants/custome__widget/tcustome_container.dart';
import '../../../utils/constants/global.dart';

class SuccessScr extends StatefulWidget {
 String check;
   SuccessScr({super.key,
    required this.check,
  required this.click

  });
  final Function()click;

  @override
  State<SuccessScr> createState() => _SuccessScrState();
}

class _SuccessScrState extends State<SuccessScr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.largePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Lottie.asset("assets/lottie_icon/Animation - 1735219613894.json",
                  height: 250, fit: BoxFit.fill, reverse: false),
              Text(
                "Congratulation!",
                style: TextStyle(fontSize: size.brandingSize),
              ),
              Text("Account created successfully!"),
              SizedBox(
                height: size.tbutton_hei,
              ),
              GestureDetector(
                  onTap:widget.click,
                  child: TcustomContainer(
                    child: Center(
                        child: Text(
                     widget.check,
                      style: TextStyle(color: white),
                    )),
                    radius: size.tradius_large,
                    color: newprimaryColor,
                    height: size.tbutton_hei,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

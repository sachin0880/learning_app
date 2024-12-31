import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/custome__widget/tcustome_container.dart';
import '../../../utils/constants/global.dart';
import '../sign_screen.dart';

class PasswordChangesscr extends StatefulWidget {
  const PasswordChangesscr({super.key});

  @override
  State<PasswordChangesscr> createState() => _PasswordChangesscrState();
}

class _PasswordChangesscrState extends State<PasswordChangesscr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.largePadding),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Lottie.asset(
                  "assets/lottie_icon/Animation - 1735219613894.json",
                  height: 250, fit: BoxFit.fill, reverse: false),
              Text("Congratulation!",
                style: TextStyle(fontSize: size.brandingSize),),
              Text("password changed successfully!"),
              SizedBox(height: size.tbutton_hei,),
              GestureDetector(onTap: () {Get.to((SignScreen()));},
                  child: TcustomContainer(
                    radius: size.tradius_large,
                    color: newprimaryColor,
                    height: size.tbutton_hei,
                    child: Center(child: Text("Continue to sign in",
                      style: TextStyle(color: white),)),))

            ],
          ),
        ),
      ),
    );
  }
}
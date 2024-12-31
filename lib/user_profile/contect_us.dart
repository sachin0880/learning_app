import 'package:flutter/material.dart';
import 'package:learning_app/user_profile/widget_c/contect_uss.dart';

import '../utils/constants/global.dart';

class ContectUs extends StatefulWidget {
  const ContectUs({super.key});

  @override
  State<ContectUs> createState() => _ContectUsState();
}

class _ContectUsState extends State<ContectUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Contect us",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: size.titleFontsize),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: size.largePadding,
        ),
        child: Column(
          children: [
            ContectUss(image: "assets/icon/whatsapp.png", title: "WhatsApp"),
            SizedBox(height: size.largeSizeBox,),
            ContectUss(image: "assets/icon/facebook.png", title: "Facebook"),
            SizedBox(height: size.largeSizeBox,),
            ContectUss(image: "assets/icon/instagram.png", title: "Instagram"),
            SizedBox(height: size.largeSizeBox,),
            ContectUss(image: "assets/icon/twitter.png", title: "Twitter"),
            SizedBox(height: size.largeSizeBox,),
            ContectUss(image: "assets/icon/skype.png", title: "Skype"),

          ],
        ),
      ),
    );
  }
}



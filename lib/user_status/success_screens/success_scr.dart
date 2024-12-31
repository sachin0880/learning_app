import 'package:flutter/material.dart';
import 'package:learning_app/utils/custom_widget/tbutton.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import 'package:lottie/lottie.dart';
import '../../utils/constants/global.dart';

class SuccessScr extends StatefulWidget {
String  text;

   SuccessScr({super.key,
    required this.click,required this.text
  });
final Function click;
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
              Lottie.asset("assets/lottie_icon/Animation - 1735150411811.json",

                  height: 250, fit: BoxFit.fill, reverse: true),
              Text(
                "Congratulation!",
                style: TextStyle(fontSize: size.brandingSize),
              ),
              Text("Account created successfully!"),
              SizedBox(
                height: size.tbutton_hei,
              ),
             Tbutton(text: widget.text, btnClick: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
             },)
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/global.dart';

class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen> {
  //
  // final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    getpages() {
      return [
        PageViewModel(
            decoration: PageDecoration(imageFlex: 2),
            image: Container(
              width: MediaQuery.of(context).size.width,
                // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: Image.asset("assets/images/onbaordimg1.png",height: 600)),
            titleWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Online Study is the",
                  style: TextStyle(
                      color: black,
                      fontSize: size.brandingSize,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Best choice for\neveryone",
                  style: TextStyle(
                      color: black,
                      fontSize: size.brandingSize,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            body: ""),
        PageViewModel(
            decoration: PageDecoration(imageFlex: 2),
            image: Container(
                height: 400,
                width: 500,
                // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: Image.asset(
                  "assets/images/onboardimg2.png",
                )),
            titleWidget: Column(
              children: [
                Text(
                  "Best platform for both",
                  style: TextStyle(
                      color: black,
                      fontSize: size.brandingSize,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Teachers & learners",
                  style: TextStyle(
                      color: black,
                      fontSize: size.brandingSize,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            body: ""),
        PageViewModel(
            decoration: PageDecoration(imageFlex: 2),
            image: Container(
                height: 400,
                width: 500,
                // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                child: Image.asset("assets/images/onboardimg3.png")),
            titleWidget: Column(
              children: [
                Text(
                  "Learn Anytime",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: black,
                      fontSize: size.brandingSize,
                      fontWeight: FontWeight.w300),
                ),
                Text(
                  "Anywhere. Accelerate Your Future & beyond.",
                  style: TextStyle(
                      color: black,
                      fontSize: size.brandingSize,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            body: "")
      ];
    }

    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,

        skip: Text(
          "Skip",
          style: TextStyle(color: newprimaryColor),
        ),
        next: Container(
            padding: EdgeInsets.all(20),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: newprimaryColor),
            child: Icon(
              Icons.arrow_forward,
              color: white,
            )),
        done: Container(
            padding: EdgeInsets.all(20),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: newprimaryColor),
            child: Icon(
              Icons.done,
              color: white,
            )),
        dotsDecorator: DotsDecorator(color: newprimaryColor),
        onDone: () {
          Get.to(HomePage());
        },
        pages: getpages(),
      ),
    );
  }
}

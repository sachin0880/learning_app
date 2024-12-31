import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';
import 'package:learning_app/views/user_profile/sign_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: newprimaryColor,
      body: Center(child: Text("Logo",style: TextStyle(fontSize: size.brandingSize,color: Colors.white),),),
    );
  }
}
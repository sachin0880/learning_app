import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/views/home_page/homePage.dart';
import 'package:learning_app/views/home_page/widgets_homepage/list_container_homepage/Custom_list_homepage.dart';
import 'package:learning_app/views/tabbars_page/tabbar_page.dart';

void main() {
  runApp( DevicePreview(builder: (context) => MyApp(),));
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: newprimaryColor),
        useMaterial3: true,
      ),
      home: SearchPage(),
    );
  }
}



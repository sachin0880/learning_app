import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';
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
    return Obx(() => GetMaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      // themeMode: ThemeMode.system,
      themeMode: themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,
      home: SearchPage(),
    ));
  }
}

class AppThemes{

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      foregroundColor: Colors.black
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    ),

  );


  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.transparent,
        foregroundColor: Colors.white
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),

  );

}

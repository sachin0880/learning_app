import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learning_app/chatting_screens/messages.dart';
import 'package:learning_app/user_profile/add_newcard.dart';
import 'package:learning_app/user_profile/contect_us.dart';
import 'package:learning_app/user_profile/edit_profile.dart';
import 'package:learning_app/user_profile/payment_method.dart';
import 'package:learning_app/user_profile/profile_page.dart';
import 'package:learning_app/user_profile/setting.dart';
import 'package:learning_app/user_status/create_account.dart';
import 'package:learning_app/user_status/intro_screen/splash_screen.dart';
import 'package:learning_app/user_status/sign_screen.dart';
import 'package:learning_app/user_status/success_screens/success_scr.dart';
import 'package:learning_app/utils/constants/colors.dart';
import 'package:learning_app/utils/constants/global.dart';

import 'package:learning_app/views/home_page/homePage.dart';
import 'package:learning_app/views/notifcation-page/notify_page.dart';

import 'chatting_screens/chat_screen.dart';

void main() {

  runApp( DevicePreview(builder: (context) => MyApp(), enabled: !kReleaseMode,));
  //runApp(const MyApp());

}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
      // builder: DevicePreview.appBuilder,
      // locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: themeController.isDarkMode.value ? ThemeMode.dark : ThemeMode.light,

      home: CallScreen(),

    ));
  }
}

class AppThemes{

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor:   white,
    appBarTheme: AppBarTheme(
      backgroundColor:  white,
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

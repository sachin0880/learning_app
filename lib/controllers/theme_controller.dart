import 'package:get/get.dart';

import '../main.dart';
class ThemeController extends GetxController{
  Rx<bool> isDarkMode = false.obs;

  setThemeMode(value){
    isDarkMode.value = !isDarkMode.value;
    Get.changeTheme(isDarkMode.value ? AppThemes.darkTheme : AppThemes.lightTheme);
  }
}
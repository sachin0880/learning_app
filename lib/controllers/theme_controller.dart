import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
class ThemeController extends GetxController{
  Rx<bool> isDarkMode = false.obs;

  @override
  void onInit(){
    super.onInit();
    loadTheme();
  }

  Future<void> loadTheme() async{
    SharedPreferences prefs  = await SharedPreferences.getInstance();
    isDarkMode.value = prefs.getBool('isDarkMode')??false;
  }

  setThemeMode(value) async{
    isDarkMode.value = !isDarkMode.value;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isDarkMode', isDarkMode.value);
    Get.changeTheme(isDarkMode.value ? AppThemes.darkTheme : AppThemes.lightTheme);
  }
}
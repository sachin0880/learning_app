import 'package:get/get.dart';
class ThemeController extends GetxController{
  Rx<bool> isDarkMode = false.obs;

  setThemeMode(value){
    isDarkMode.value = value;
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:TUPmob/utils/shared_pref.dart';

class HomeController extends GetxController {
  var sampleText = 'Hello, World!'.obs;
  var isDarkTheme = false.obs;
  var selectedLanguage = 'en'.obs;

  void toggleTheme() {
    isDarkTheme.value = !isDarkTheme.value;
    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
    SharedPref.setAppTheme(
        isDarkTheme.value ? ThemeMode.dark : ThemeMode.light);
  }

  void changeLanguage(String languageCode) {
    selectedLanguage.value = languageCode;
    var locale = Locale(languageCode);
    Get.updateLocale(locale);
    SharedPref.setCurrentLanguage(languageCode);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTheme extends GetxController {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(color: Colors.red),
  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(color: Colors.grey),
  );
  RxBool changeMode = false.obs;

  //  void changeTheme(String codeTheme) {
  //   Theme themeMode = Theme();
  //   prefs.setString('theme', codeTheme);
  //   Get.updateLocale(themeMode);
  // }
}

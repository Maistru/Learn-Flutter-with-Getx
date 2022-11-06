import 'package:belajar_getx/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MyLocaleController extends GetxController {
  void changeLocale(String codeLang) {
    Locale locale = Locale(codeLang);
    prefs.setString('lang', codeLang);
    Get.updateLocale(locale);
  }

  // Locale initialLang =
  //     prefs.getString('lang') == 'ar' ? const Locale('ar') : const Locale('en');
       Locale initialLang =
      prefs.getString('lang') == null ? Get.deviceLocale! :Locale (prefs.getString('lang')! );
}

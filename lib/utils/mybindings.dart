import 'package:belajar_getx/controller/login_controller.dart';
import 'package:belajar_getx/controller/page1_controller.dart';
import 'package:belajar_getx/locale/locale_controller.dart';
import 'package:belajar_getx/services/setting_services.dart';
import 'package:get/get.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController());
    Get.put(Page1Controller());
    // Get.put(SettingServices());
     Get.put(MyLocaleController());
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPageController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberme = false.obs;

  void login() async {
    final box = GetStorage();
    if (emailC.text == 'admin@gmail.com' && passC.text == '12345678') {
      if (box.read('tokin') != null) {
        box.remove('tokin');
      }
      if (rememberme.isTrue) {
        box.write('tokin', {
          'email': emailC.text,
          'password': passC.text,
        });
      }
      Get.offAllNamed('/homepage');
    } else {
      Get.defaultDialog(
        title: 'يوجد خطأ',
        middleText: 'الايميل وكلمة المرور غير مطابق',
      );
    }
  }

  void logOut() async {
    Get.offAllNamed('/loginpage');
  }
}

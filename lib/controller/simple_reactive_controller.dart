import 'package:get/get.dart';

class SimpleReactiveC extends GetxController {
  var sipmle = 0;
  void simpleNum() {
    sipmle++;
    update();
  }

  var reactive = 0.obs;
  void reactiveNum() {
    reactive++;
  }
}

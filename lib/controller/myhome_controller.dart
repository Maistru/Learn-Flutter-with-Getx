import 'package:get/get.dart';

class HomeC extends GetxController {
  var data = 0.obs;
  plus() => data++;
  min() => data--;
}

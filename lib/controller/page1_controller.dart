import 'package:get/get.dart';
class Page1Controller extends GetxController{
  RxInt counter = 0.obs;

  increment()=> counter++;
  decrement()=> counter--;

}
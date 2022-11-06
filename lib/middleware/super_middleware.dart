import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuperMiddleware extends GetMiddleware {
  @override
  int? get priority => 2;

  bool myBool = false;

  @override
  RouteSettings? redirect(String? route) {
    if (myBool == true) {
      return const RouteSettings(name: '/super');
    }
  }
}

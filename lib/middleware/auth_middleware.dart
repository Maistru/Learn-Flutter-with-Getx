import 'package:belajar_getx/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (prefs.getString('role') == 'user') {
      return const RouteSettings(name: '/homeone');
    }

    if (prefs.getString('role') == 'admin') {
      return const RouteSettings(name: '/admin');
    }
  }
}

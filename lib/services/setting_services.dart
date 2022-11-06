import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class SettingServices extends GetxService {
//   late SharedPreferences prefs;
//   RxInt counter = 0.obs;
//   Future<SettingServices> init() async {
//     prefs = await SharedPreferences.getInstance();
//     counter.value = prefs.getInt('counter') ?? 0;
//     return this;
//   }

//   increase() {
//     counter.value++;
//     prefs.setInt('counter', counter.value);
//   }

//   @override
//     RouteSettings? redirect(String? route) {
//       if (prefs.getString('role') == 'user') {
//         return const RouteSettings(name: '/homeone');
//       }

//       if (prefs.getString('role') == 'admin') {
//         return const RouteSettings(name: '/admin');
//       }
//     }
// }

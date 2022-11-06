// import 'package:belajar_getx/services/setting_services.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Counter extends StatelessWidget {
//   // const Counter({Key? key}) : super(key: key);
//   // SettingServices c = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('COUNTER'),
//         centerTitle: true,
//       ),
//       body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Obx(() => Text(
//                 '${c.counter}',
//                 style: const TextStyle(fontSize: 20),
//               )),
//           ElevatedButton(
//               onPressed: () {
//                 c.increase();
//               },
//               child: const Text('+')),
//           ElevatedButton(
//               onPressed: () {
//                 c.prefs.clear();
//               },
//               child: const Text('CLEAR')),
//         ],
//       )),
//     );
//   }
// }

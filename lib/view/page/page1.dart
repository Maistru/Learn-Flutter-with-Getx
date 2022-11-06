import 'dart:developer';

import 'package:belajar_getx/controller/page1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatelessWidget {
  Page1({Key? key}) : super(key: key);
  final Page1Controller counterC = Get.find() ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  '${counterC.counter}',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterC.decrement();
                  },
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    counterC.increment();
                  },
                  child: const Text('+'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

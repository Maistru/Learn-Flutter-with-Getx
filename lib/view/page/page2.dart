import 'package:belajar_getx/controller/page1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);
  final Page1Controller counterC = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE 2"),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        '${counterC.counter}',
        style: const TextStyle(
          fontSize: 30,
        ),
      )),
    );
  }
}

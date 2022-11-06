import 'package:belajar_getx/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Super extends StatelessWidget {
  // const Super({Key? key}) : super(key: key);
  LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SUPER'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('SUPER'),
          ],
        ),
      ),
    );
  }
}

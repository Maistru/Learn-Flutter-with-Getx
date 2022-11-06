import 'package:belajar_getx/controller/login_controller.dart';
import 'package:belajar_getx/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeOne extends StatelessWidget {
  // const HomeOne({Key? key}) : super(key: key);
  LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME ONE'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {
                prefs.clear();
                Get.offAllNamed('/');
              },
              child: const Text("EXIT"),
            ),
          ],
        ),
      ),
    );
  }
}

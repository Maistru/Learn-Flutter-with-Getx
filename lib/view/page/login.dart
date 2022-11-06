import 'package:belajar_getx/controller/login_controller.dart';
import 'package:belajar_getx/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  // const Login({Key? key}) : super(key: key);
  // LoginController loginC = Get.put(LoginController());
  LoginController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LOGIN'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await prefs.setString('role', 'user');
                Get.offNamed('homeone');
              },
              child: const Text('LOGIN'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                await prefs.setString('role', 'admin');
                Get.offNamed('admin');
              },
              child: const Text('LOGIN ADMIN'),
            ),
          ],
        ),
      ),
    );
  }
}

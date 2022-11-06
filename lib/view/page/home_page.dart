import 'package:belajar_getx/controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  final LoginPageController loginC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HOME PAGE'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loginC.logOut();
        },
        child: const Icon(Icons.logout),
      ),
    );
  }
}

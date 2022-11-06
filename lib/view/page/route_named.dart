import 'package:belajar_getx/utils/mybindings.dart';
import 'package:belajar_getx/view/page/page1.dart';
import 'package:belajar_getx/view/page/page2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteNamed extends StatelessWidget {
  const RouteNamed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ROUTE GETX'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => Page1(), binding: MyBindings());
              },
              child: const Text('Route page1'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => Page2(), binding: MyBindings());
              },
              child: const Text('Route page2'),
            ),
          ],
        ),
      ),
    );
  }
}

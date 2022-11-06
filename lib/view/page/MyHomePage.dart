import 'package:belajar_getx/controller/myhome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeC myController = Get.put(HomeC());
    return Scaffold(
      appBar: AppBar(
        title: const Text('LEARN GET X'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx((() => Text(
                  '${myController.data.value}',
                  style: const TextStyle(fontSize: 30),
                ))),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      myController.min();
                    },
                    child: const Text(
                      '-',
                    )),
                ElevatedButton(
                    onPressed: () {
                      myController.plus();
                    },
                    child: const Text('+')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

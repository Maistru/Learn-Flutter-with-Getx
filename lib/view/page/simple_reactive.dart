import 'package:belajar_getx/controller/simple_reactive_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleReactive extends StatelessWidget {
  // const SimpleReactive({Key? key}) : super(key: key);
  final SimpleReactiveC simpleReactiveC = Get.put(SimpleReactiveC());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SIMPLE - REACTIVE GETX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     '${simpleReactiveC.reactive}',
            //     style: const TextStyle(fontSize: 20),
            //   ),
            // ),
            GetBuilder<SimpleReactiveC>(
              builder: (controller) => Text(
                '${simpleReactiveC.sipmle}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                simpleReactiveC.simpleNum();
              },
              child: const Text('SIMPLE'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                simpleReactiveC.reactiveNum();
              },
              child: const Text('REACTIVE'),
            ),
          ],
        ),
      ),
    );
  }
}

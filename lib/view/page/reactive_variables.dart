import 'package:belajar_getx/controller/reactiveV_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveVariables extends StatelessWidget {
  // const ReactiveVariables({Key? key}) : super(key: key);
  final reactiveC = Get.put(ReactiveVcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REACTIVE VARIABLES'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                      '${reactiveC.dataInt}',
                      style: const TextStyle(fontSize: 20),
                    )),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.minInt();
                      },
                      child: const Text('-'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.plusInt();
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                      '${reactiveC.dataString}',
                      style: const TextStyle(fontSize: 20),
                    )),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.updateString();
                      },
                      child: const Text('update'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.resetString();
                      },
                      child: const Text('reset'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                      '${reactiveC.dataDouble}',
                      style: const TextStyle(fontSize: 20),
                    )),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.mineDouble();
                      },
                      child: const Text('-'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.pluseDouble();
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                      '${reactiveC.dataBool}',
                      style: const TextStyle(fontSize: 20),
                    )),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.updateBool();
                      },
                      child: const Text('Change'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                      '${reactiveC.dataList}',
                      style: const TextStyle(fontSize: 20),
                    )),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.changeDataList();
                      },
                      child: const Text('Change'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.plusDataList();
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => Text(
                      '${reactiveC.changeSet}',
                      style: const TextStyle(fontSize: 20),
                    )),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.changeDataSet();
                      },
                      child: const Text('Change'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        reactiveC.plusDataSet();
                      },
                      child: const Text('+'),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 0.5,
              color: Colors.black,
            ),
            Row(
              children: [
                Expanded(
                  child: Obx(
                    () => ListTile(
                      leading: CircleAvatar(
                        child: Text('${reactiveC.dataMap['id']}'),
                      ),
                      title: Text('${reactiveC.dataMap['name']}'),
                      subtitle: Text('${reactiveC.dataMap['age']}'),
                    ),
                  ),
                ),
                 ElevatedButton(
              onPressed: () {
                reactiveC.changeName();
              },
              child: const Text('Change name'),
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

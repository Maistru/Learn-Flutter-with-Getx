import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGet extends StatelessWidget {
  const DialogGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'DIALOG',
                  content: const Text("Hallo Dialog"),
                  radius: 5.5,
                  barrierDismissible: true,
                  contentPadding: const EdgeInsets.all(40),
                  titlePadding: const EdgeInsets.symmetric(vertical: 40),
                  actions: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('CANCEL'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
              child: const Text('OPEN DIALOG'),
            ),
          ],
        ),
      ),
    );
  }
}

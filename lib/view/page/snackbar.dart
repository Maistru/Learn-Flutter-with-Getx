import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarGet extends StatelessWidget {
  const SnackBarGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SNACK BAR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar('HALLO', 'HOW ARE YOU',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.grey[400],
                      margin: const EdgeInsets.all(10),
                      showProgressIndicator: true);
                },
                child: const Text('OPEN SNACK BAR'))
          ],
        ),
      ),
    );
  }
}

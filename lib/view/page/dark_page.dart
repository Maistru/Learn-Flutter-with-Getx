import 'package:belajar_getx/themedata/mytheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkPage extends StatelessWidget {
  const DarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DARK MODE'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
              ),
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(MyTheme.customLightTheme);
                } else {
                  Get.changeTheme(MyTheme.customDarkTheme);
                }
              },
              child: const Text('CHANGE THEME'),
            ),
          ],
        ),
      ),
    );
  }
}

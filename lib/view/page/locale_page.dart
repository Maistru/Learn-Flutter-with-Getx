import 'package:belajar_getx/locale/locale_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LocalePage extends StatelessWidget {
  // const LocalePage({Key? key}) : super(key: key);
  MyLocaleController controllerLang = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              controllerLang.changeLocale('ar');
            }, child: Text('2'.tr)),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              controllerLang.changeLocale('en');
            }, child: Text('3'.tr)),
          ],
        ),
      ),
    );
  }
}

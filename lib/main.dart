import 'package:belajar_getx/controller/page1_controller.dart';
import 'package:belajar_getx/locale/locale.dart';
import 'package:belajar_getx/locale/locale_controller.dart';
import 'package:belajar_getx/middleware/auth_middleware.dart';
import 'package:belajar_getx/middleware/super_middleware.dart';
import 'package:belajar_getx/services/setting_services.dart';
import 'package:belajar_getx/themedata/mytheme.dart';
import 'package:belajar_getx/utils/mybindings.dart';
import 'package:belajar_getx/view/page/MyHomePage.dart';
import 'package:belajar_getx/view/page/admin.dart';
import 'package:belajar_getx/view/page/bottom_shet.dart';
import 'package:belajar_getx/view/page/counter.dart';
import 'package:belajar_getx/view/page/dark_page.dart';
import 'package:belajar_getx/view/page/dialog.dart';
import 'package:belajar_getx/view/page/home_one.dart';
import 'package:belajar_getx/view/page/home_page.dart';
import 'package:belajar_getx/view/page/locale_page.dart';
import 'package:belajar_getx/view/page/login.dart';
import 'package:belajar_getx/view/page/login_page.dart';
import 'package:belajar_getx/view/page/page1.dart';
import 'package:belajar_getx/view/page/page2.dart';
import 'package:belajar_getx/view/page/reactive_variables.dart';
import 'package:belajar_getx/view/page/route_named.dart';
import 'package:belajar_getx/view/page/simple_reactive.dart';
import 'package:belajar_getx/view/page/snackbar.dart';
import 'package:belajar_getx/view/page/super.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  // await initServices();
  runApp(const MyApp());
}

late SharedPreferences prefs;
// Future initServices() async {
//   await Get.putAsync(() => SettingServices().init());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    MyLocaleController initialLangC = Get.put(MyLocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GET X',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      theme: MyTheme.customLightTheme,
      initialRoute: '/darkpage',
      // home: Login(),
      initialBinding: MyBindings(),
      translations: Mylocale(),
      // locale: Get.deviceLocale,
      locale: initialLangC.initialLang,
      getPages: [
        GetPage(
            name: '/login',
            page: () => Login(),
            middlewares: [AuthMiddleware(), SuperMiddleware()]),
        // GetPage(name: '/counter', page: () => Counter()),
        GetPage(name: '/darkpage', page: () => DarkPage()),
        GetPage(name: '/localepage', page: () => LocalePage()),
        GetPage(name: '/admin', page: () => Admin()),
        GetPage(name: '/super', page: () => Super()),
        GetPage(name: '/homeone', page: () => HomeOne()),
        GetPage(name: '/homepage', page: () => HomePage()),
        GetPage(name: '/loginpage', page: () => LoginPage()),
        GetPage(name: '/page1', page: () => Page1()),
        GetPage(name: '/page2', page: () => Page2()),
      ],
    );
  }
}

import 'package:get/get.dart';
class Mylocale implements Translations{
  @override
 
  Map<String, Map<String, String>> get keys => {
    'ar':{
      '1':'الصفحة الرئيسية',
      '2':'عربي',
      '3': 'انجليزي',
    },
    'en':{
      '1':'Home Page',
      '2':'Arabic',
      '3':'English',
    },
  };

}
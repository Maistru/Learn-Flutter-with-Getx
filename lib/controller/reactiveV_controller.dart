import 'package:get/get.dart';

class ReactiveVcontroller extends GetxController {
  RxInt dataInt = 0.obs;
  void plusInt() => dataInt++;
  void minInt() => dataInt--;

  RxString dataString = 'data'.obs;
  void updateString() => dataString.value = 'Update data';
  void resetString() => dataString.value = 'data';

  RxDouble dataDouble = 0.0.obs;
  void pluseDouble() => dataDouble.value++;
  void mineDouble() => dataDouble.value--;

  RxBool dataBool = false.obs;
  void updateBool() {
    // if (dataBool.isTrue) {
    //   dataBool.value = false;
    // } else {
    //   dataBool.value = true;
    // }
    dataBool.toggle();
  }

  RxList<int> dataList = [1, 2, 3].obs;
  int addDataList = 4;
  void plusDataList() {
    dataList.add(addDataList);
    addDataList++;
  }

  void changeDataList() {
    dataList[0] = 77;
  }

  RxSet<int> dataSet = {1, 2, 3}.obs;
  var changeSet = {1, 2, 3}.obs;
  int addDataSet = 4;

  void plusDataSet() {
    changeSet.add(addDataSet);
    addDataSet++;
  }

  void changeDataSet() {
    changeSet.value = {77, 2, 3};
  }

  RxMap<String,dynamic> dataMap = {
    'id': 1,
    'name':'Ali',
    'age': 27,
  }.obs;
  void changeName(){
    dataMap['name']='Muhammad';
  }
  
}

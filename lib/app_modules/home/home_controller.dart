import 'package:get/get.dart';

class HomeController extends GetxController {
  // hold data coming from api
  List<Map<dynamic, dynamic>> data = [];
  Rx<String> sampleText = "Get Ready".obs;

  // api call status

  // getting data from api
  getData() async {
    sampleText.value = "Welcome to GetX" + sampleText.value;
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}

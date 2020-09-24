import 'package:get/get.dart';

class ConversaBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ConversaController());
  }
}

class ConversaController extends GetxController {}

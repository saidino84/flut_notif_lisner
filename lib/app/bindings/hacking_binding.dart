
import 'package:get/get.dart';
import '../controllers/hacking_controller.dart';


class HackingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HackingController>(() => HackingController());
  }
}
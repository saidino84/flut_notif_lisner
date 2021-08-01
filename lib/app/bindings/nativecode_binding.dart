
import 'package:get/get.dart';
import '../controllers/nativecode_controller.dart';


class NativeCodeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NativeCodeController>(() => NativeCodeController());
  }
}
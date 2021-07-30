import 'package:get/get.dart';

class HomeController extends GetxController {
  var _i = 0.obs;
  int get i => _i.value;
  increment() {
    _i.value += 1;
    print('incremented $_i');
    // update();
  }
}

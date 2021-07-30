import 'package:get/get.dart';

class HomeController extends GetxController {
  var _i = 0;

  increment() {
    _i++;
    update();
  }
}

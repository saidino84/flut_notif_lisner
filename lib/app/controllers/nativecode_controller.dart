import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NativeCodeController extends GetxController {
  double batery = 0;
  late MethodChannel platform;

  //esta key serve como parametro para pegar o metodo assinado la no KOtlin
  // normalmente seria o package
  String key =
      'com.saidino.flutter.flut_notif_lisner/battery'; //batery 'e nome do metodo

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    platform == MethodChannel('samples.flutter.dev/battery');
  }
}

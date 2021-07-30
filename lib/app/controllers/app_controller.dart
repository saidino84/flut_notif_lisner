import 'dart:async';

import 'package:flut_notif_lisner/shared.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class AppController extends GetxController {
  Notifications? _notifications;
  late StreamSubscription<NotificationEvent>? _subscription;

  // List<NotificationEvent>_logs = [];
  final _logs = <NotificationEvent>[].obs;
  final started_hackin = false.obs;

  List<NotificationEvent> get logs => _logs.value;
  @override
  void onInit() {
    // TODO: implement onInit

    super.onInit();
    initPlatformState();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    try {
      stopListenning();
    } catch (e) {}
    super.onClose();
  }

  Future<void> initPlatformState() async {
    startHacking();
  }

  void startHacking() {
    _notifications = Notifications();
    try {
      _subscription = _notifications!.notificationStream!.listen(onData);
      started_hackin.value = true;
    } on NotificationException catch (excption) {
      print('ERRRO    ====== NA NOTIFICACAIO  [ERRO =$excption');
      Get.defaultDialog(
          title: 'Start Listenning Notifications ',
          content: Text('Erro ao iniciar hacking $excption'));
    }
  }

  void stopListenning() {
    _subscription?.cancel();
    started_hackin.value = false;
  }

  void onData(NotificationEvent event) {
    _logs.value.add(event);
    Get.defaultDialog(
        title: 'New NOtification', content: Text('${event.toString()}'));
  }
}

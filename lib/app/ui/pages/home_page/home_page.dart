import 'package:flut_notif_lisner/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Hi ${controller.i}')),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(AppRoute.HACKIN),
            icon: Icon(
              Icons.notifications_on,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Text('HomeController'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}

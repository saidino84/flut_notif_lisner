import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('HomePage'),
        ),
        body: SafeArea(
          child: Text('HomeController'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.increment(),
          child: Icon(Icons.add),
        ),
      );
    });
  }
}

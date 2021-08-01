import 'dart:io';

import 'package:flut_notif_lisner/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/home_controller.dart';

class HomePage extends GetView<AppController> {
  final home_controller = Get.find<HomeController>();
  var len = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('Hi ${len.value}')),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(AppRoute.HACKIN),
            icon: Icon(
              Icons.admin_panel_settings,
              color: Colors.redAccent,
            ),
          ),
          IconButton(
            onPressed: () => Get.toNamed(AppRoute.NATIVE),
            icon: Icon(
              Icons.notifications_on,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: FutureBuilder<List<Directory>?>(
            future: home_controller.get_externalStorageDirectories,
            builder: (ctx, snapshot) {
              Text txt = const Text('');
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Text('Error');
                } else if (snapshot.hasData) {
                  return ListView.builder(itemBuilder: (ctx, i) {
                    var path = snapshot.data!.map((e) {
                      e.path;
                      // len++;
                    }).toList();

                    return ListTile(
                      title: Text('$path'),
                    );
                  });
                }
              }
              return Text('Not available the space');
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          home_controller.increment();
          home_controller.get_dirs();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildDirectory(
      BuildContext context, AsyncSnapshot<Directory?> snapshot) {
    Text text = const Text('');
    if (snapshot.connectionState == ConnectionState.done) {
      if (snapshot.hasError) {
        text = Text('Error: ${snapshot.error}');
      } else if (snapshot.hasData) {
        text = Text('path: ${snapshot.data!.path}');
      } else {
        text = const Text('path unavailable');
      }
    }
    return Padding(padding: const EdgeInsets.all(16.0), child: text);
  }
}

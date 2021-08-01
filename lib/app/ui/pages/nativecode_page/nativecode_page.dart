import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/nativecode_controller.dart';

class NativeCodePage extends GetView<NativeCodeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NativeCodePage'),
      ),
      body: SafeArea(
        child: Center(child: Text('00')),
      ),
    );
  }
}

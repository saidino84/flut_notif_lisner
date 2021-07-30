import 'package:flut_notif_lisner/shared.dart';
import '../../../controllers/hacking_controller.dart';
import 'dart:async';

class HackingPage extends GetView<HackingController> {
  var app_controller = Get.find<AppController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HackingPage'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('Notifications'),
            Expanded(
              child: Center(
                child: ListView.builder(
                  itemCount: app_controller.logs.length,
                  reverse: true,
                  itemBuilder: (_, i) {
                    final log = app_controller.logs[i];

                    return ListTile(
                      leading:
                          Text('${log.timeStamp.toString().substring(0, 19)}'),
                      trailing:
                          Text('${log.packageName.toString().split('.').last}'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

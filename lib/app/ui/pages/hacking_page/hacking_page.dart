import 'package:flut_notif_lisner/shared.dart';
import '../../../controllers/hacking_controller.dart';
import 'dart:async';

class HackingPage extends GetView<AppController> {
  // var hackin_controller = Get.find<AppController>();
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
              child: Container(
                height: 500,
                width: double.infinity,
                child: Obx(
                  () => ListView.builder(
                    itemCount: controller.logs.length,
                    reverse: true,
                    itemBuilder: (_, i) {
                      final log = controller.logs[i];

                      return ListTile(
                        leading: Text(
                            '${log.timeStamp.toString().substring(0, 19)}'),
                        trailing: Text(
                            '${log.packageName.toString().split('.').last}'),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

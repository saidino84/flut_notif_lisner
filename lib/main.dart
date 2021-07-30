import 'package:flut_notif_lisner/shared.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hacking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPage.pages,
    );
  }
}

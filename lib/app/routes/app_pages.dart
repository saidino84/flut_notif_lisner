import 'package:flut_notif_lisner/shared.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoute.HOME,
      page: () => HomePage(),
      bindings: [
        HomeBinding(),
      ],
    ),
  ];
}

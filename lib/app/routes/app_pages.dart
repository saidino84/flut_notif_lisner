import 'package:flut_notif_lisner/shared.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoute.HOME,
      page: () => HomePage(),
      bindings: [HomeBinding(), AppBinding()],
    ),
    GetPage(
      name: AppRoute.HACKIN,
      page: () => HackingPage(),
      bindings: [HackingBinding(), AppBinding()],
    ),
    GetPage(
      name: AppRoute.NATIVE,
      page: () => NativeCodePage(),
      bindings: [NativeCodeBinding(), AppBinding()],
    ),
  ];
}

import 'package:get/get.dart';
import 'package:track/page/home/home_binding.dart';
import 'package:track/page/home/home_page.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.Home;

  static final routes = [
    GetPage(
      name: Routes.Home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}

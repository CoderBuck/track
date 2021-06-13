import 'package:get/get.dart';
import 'package:track/page/home/home_model.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeModel());
  }
}
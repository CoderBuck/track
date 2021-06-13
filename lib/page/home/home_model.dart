import 'dart:async';

import 'package:get/get.dart';

class HomeModel extends GetxController {
  var time = DateTime.now().obs;

  int secondOneDay = 24 * 60 * 60;

  String get countDownTimeStr {
    var value = time.value;
    var s1 = value.hour * 60 * 60 + value.minute * 60 + value.second;
    var s2 = secondOneDay - s1;
    var duration = Duration(seconds: s2);
    var inHours = duration.inHours;
    var inMinutes = duration.inMinutes;
    var inSeconds = duration.inSeconds;

    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(inSeconds.remainder(60));
    return "$inHours:$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  void onInit() {
    super.onInit();
    Timer.periodic(Duration(seconds: 1), (timer) {
      time.value = DateTime.now();
      time.refresh();
    });
  }

  @override
  void onReady() {
    super.onReady();
  }
}

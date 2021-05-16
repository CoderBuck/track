import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track/page/home/home_model.dart';
import 'package:track/util/date_time_util.dart';

class HomePage extends GetWidget<HomeModel> {
  @override
  Widget build(BuildContext context) {
    var daysInYear = DateTimeUtil.daysInYear();
    var daysOneYear = DateTimeUtil.daysOneYear();
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        elevation: 0,
        title: Text('Track  $daysInYear/$daysOneYear'),
        actions: [
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.bottomCenter,
            child: Obx(
              () => Text(
                controller.countDownTimeStr,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: DateTimeUtil.daysOneYear(),
        padding: const EdgeInsets.all(6),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 15,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: index + 1 < daysInYear ? Colors.grey : Colors.green,
              ),
            ),
          );
        },
      ),
    );
  }
}

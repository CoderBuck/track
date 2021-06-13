import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:track/page/home/home_model.dart';
import 'package:track/util/date_time_util.dart';

class HomePage extends GetWidget<HomeModel> {
  @override
  Widget build(BuildContext context) {
    var daysInYear = DateTimeUtil.daysInYear();
    var daysOneYear = DateTimeUtil.daysOneYear();

    return Scaffold(
      appBar: AppBar(
        title: Text.rich(TextSpan(children: [
          TextSpan(
            text: 'Track  ',
            style: Theme.of(context).textTheme.headline6,
          ),
          TextSpan(
            text: '$daysInYear/$daysOneYear',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ])),
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
        padding: const EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 15,
        ),

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: index + 1 < daysInYear ? Colors.grey.shade600
                    : index + 1 == daysInYear ? Colors.green
                    : Colors.grey.shade500
              ),
            ),
          );
        },
      ),
    );
  }
}

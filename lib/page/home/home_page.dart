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
      appBar: AppBar(
        title: Text('Home  $daysInYear/$daysOneYear'),
      ),
      body: GridView.builder(
        itemCount: DateTimeUtil.daysOneYear(),
        padding: const EdgeInsets.all(2),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 15,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              color: index+1 < daysInYear ? Colors.grey : Colors.green,
            ),
          );
        },
      ),
    );
  }
}

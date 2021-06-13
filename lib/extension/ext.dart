import 'package:flutter/material.dart';
import 'package:track/widget/keep_alive.dart';

var ext;


extension WidgetExt on Widget {

  KeepAliveWidget get keepAlive => KeepAliveWidget(child: this);

}
import 'package:flutter/material.dart';
import 'package:robot_task/start/di.dart' as di;
import 'package:robot_task/start/one_app.dart';

void main() async {
  await di.init();
  runApp(const OneApp());
}

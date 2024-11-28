import 'package:flutter/material.dart';
import 'package:robot_task/presentation/robot_control/page/robot_control_page.dart';

class OneApp extends StatelessWidget {
  const OneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: RobotControlPage(),
      ),
    );
  }
}

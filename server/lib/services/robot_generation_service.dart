import 'dart:math';

import 'package:server/data/models/robot_state.dart';

/// Service for generating random robot states
class RobotGenerationService {
  final Random _random = Random();

  RobotState generateRobotState() {
    return RobotState(
      x: _random.nextInt(500),
      y: _random.nextInt(500),
      speed: _random.nextDouble() * 10,
      battery: _random.nextInt(100),
      temperature: 10 + _random.nextDouble() * 10,
    );
  }
}

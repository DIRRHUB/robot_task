import 'dart:math';

import 'package:server/data/models/robot_state.dart';

/// Service for generating random robot states
class RobotGenerationService {
  final Random _random = Random();
  static const double maxSpeed = 100; // Maximum speed for the robot
  static const double movementRange = 300; // Max range for the robot's movement (used as a base)
  static const double batteryChange = 1.0;
  static const double temperatureChange = 0.2;

  RobotState generateRobotState(RobotState previousState) {
    // Calculate speed factor based on the robot's speed (adjust for visual effect)
    double speedFactor = previousState.speed / maxSpeed; // Normalize speed to a factor between 0 and 1

    // The smaller the speed, the smaller the movement (distance between points)
    double adjustedMovementRange = movementRange * speedFactor;

    // Calculate new position based on the previous position, adjusting by speed
    double newX = previousState.x + (_random.nextDouble() * adjustedMovementRange * 2 - adjustedMovementRange);
    double newY = previousState.y + (_random.nextDouble() * adjustedMovementRange * 2 - adjustedMovementRange);

    // Check if the new position exceeds bounds and reflect off the edge (0 or 700)
    newX = _reflectPosition(newX, 0, 700);
    newY = _reflectPosition(newY, 0, 700);

    // Generate new battery and temperature with some changes
    double newBattery = (previousState.battery - _random.nextDouble() * batteryChange).clamp(0, 100);
    double newTemperature =
        (previousState.temperature + (_random.nextDouble() * temperatureChange * 2 - temperatureChange)).clamp(10, 50);

    return RobotState(
      x: newX,
      y: newY,
      speed: previousState.speed,
      battery: newBattery,
      temperature: newTemperature,
    );
  }

  /// Reflect the position off the walls (0 and 700)
  double _reflectPosition(double position, double min, double max) {
    if (position < min) {
      return min + (min - position); // Reflect from the min boundary
    } else if (position > max) {
      return max - (position - max); // Reflect from the max boundary
    }
    return position;
  }
}

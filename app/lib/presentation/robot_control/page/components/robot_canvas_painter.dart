import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:robot_task/domain/entities/robot_item.dart';

/// A custom painter class that paints the robot's position, speed, battery, and temperature
/// on a canvas, along with a grid background.
class RobotCanvasPainter extends CustomPainter {
  RobotCanvasPainter({
    required this.robot,
    required this.previousRobot,
    required this.animation,
    required this.theme,
  }) : super(repaint: animation);

  final RobotItem robot; // The current state of the robot.
  final RobotItem previousRobot; // The previous state of the robot.
  final Animation<double> animation; // Animation for smooth transitions.
  final ThemeData theme; // Theme to be used for styling.

  @override
  void paint(Canvas canvas, Size size) {
    // Create a paint object to define the robot's appearance.
    final paint = Paint()
      ..color = theme.primaryColor
      ..style = PaintingStyle.fill;

    // Create a paint object for the grid lines.
    final gridPaint = Paint()
      ..color = theme.primaryColor.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    // Draw the grid in the background.
    _drawGrid(canvas, size, gridPaint);

    // Draw the robot at the interpolated position.
    _drawPoint(canvas, paint);

    // Create a text painter for displaying robot stats (speed, battery, temperature).
    final textPainter = TextPainter(
      text: TextSpan(
        text: 'Speed: ${robot.speed} m/s\nBattery: ${robot.battery}%\nTemperature: ${robot.temperature}°C',
        style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.primary),
      ),
      textDirection: TextDirection.ltr,
    );

    // Layout the text and paint it on the canvas at the top-left corner.
    textPainter.layout(maxWidth: size.width);
    textPainter.paint(canvas, const Offset(10, 10));
  }

  /// Draws a grid on the canvas with horizontal and vertical lines spaced by [step].
  void _drawGrid(Canvas canvas, Size size, Paint gridPaint) {
    const double step = 50.0; // Grid step size

    // Draw vertical lines.
    for (double x = 0; x < size.width; x += step) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), gridPaint);
    }

    // Draw horizontal lines.
    for (double y = 0; y < size.height; y += step) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }
  }

  /// Draws the robot at the interpolated position between the previous and current positions.
  void _drawPoint(Canvas canvas, Paint paint) {
    // Linear interpolation between the previous and current robot positions.
    final double iX =
        lerpDouble(previousRobot.position.x, robot.position.x, animation.value) ?? robot.position.x.toDouble();
    final double iY =
        lerpDouble(previousRobot.position.y, robot.position.y, animation.value) ?? robot.position.y.toDouble();

    // Draw the robot at the interpolated position.
    canvas.drawCircle(
      Offset(iX, iY),
      10, // The radius of the robot circle
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Repaint only if the robot's position or animation changes.
    return oldDelegate != this;
  }
}

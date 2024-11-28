import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:robot_task/domain/entities/robot_item.dart';

class RobotCanvasPainter extends CustomPainter {
  RobotCanvasPainter({
    required this.robot,
    required this.previousRobot,
    required this.animation,
    required this.theme,
  }) : super(repaint: animation);

  final RobotItem robot;
  final RobotItem previousRobot;
  final Animation<double> animation;
  final ThemeData theme;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = theme.primaryColor
      ..style = PaintingStyle.fill;

    final gridPaint = Paint()
      ..color = Colors.grey.withOpacity(0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    _drawGrid(canvas, size, gridPaint);
    _drawPoint(canvas, paint);

    final textPainter = TextPainter(
      text: TextSpan(
        text: 'Speed: ${robot.speed} m/s\nBattery: ${robot.battery}%\nTemperature: ${robot.temperature}°C',
        style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.primary),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(maxWidth: size.width);
    textPainter.paint(canvas, const Offset(10, 10));
  }

  void _drawGrid(Canvas canvas, Size size, Paint gridPaint) {
    const double step = 50.0; // Grid step size (distance between lines)

    // Draw vertical lines
    for (double x = 0; x < size.width; x += step) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), gridPaint);
    }

    // Draw horizontal lines
    for (double y = 0; y < size.height; y += step) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }
  }

  void _drawPoint(Canvas canvas, Paint paint) {
    // Linear interpolation between the previous and current robot positions
    final double iX =
        lerpDouble(previousRobot.position.x, robot.position.x, animation.value) ?? robot.position.x.toDouble();
    final double iY =
        lerpDouble(previousRobot.position.y, robot.position.y, animation.value) ?? robot.position.y.toDouble();

    // Draw the robot at the interpolated position
    canvas.drawCircle(
      Offset(iX, iY),
      10,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

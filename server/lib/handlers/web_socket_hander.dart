import 'dart:async';
import 'dart:convert';

import 'package:server/services/robot_generation_service.dart';

/// Handles WebSocket connections for the robot monitoring and control system
class WebSocketHandler {
  final RobotGenerationService _robotGenerationService = RobotGenerationService();

  /// Returns a WebSocket handler function that manages connections and data flow
  Function getHandler() {
    return (webSocket) {
      print('A new client connected');

      // Periodically send robot state updates every second
      final timer = Timer.periodic(Duration(seconds: 1), (timer) {
        try {
          final robotState = _robotGenerationService.generateRobotState();
          webSocket.sink.add(jsonEncode(robotState.toJson()));
        } catch (e) {
          print('Error while sending data: $e');
          timer.cancel();
        }
      });

      // Listen to messages from the client and handle connection termination
      webSocket.stream.listen(
        onDone: () {
          print('Client disconnected');
          timer.cancel();
        },
        onError: (error) {
          print('WebSocket error: $error');
          timer.cancel();
        },
      );
    };
  }
}

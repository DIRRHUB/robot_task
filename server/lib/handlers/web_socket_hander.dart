import 'dart:async';
import 'dart:convert';

import 'package:server/data/models/robot_state.dart';
import 'package:server/data/models/update_speed_state.dart';
import 'package:server/services/robot_generation_service.dart';

class WebSocketHandler {
  final RobotGenerationService _robotGenerationService = RobotGenerationService();
  RobotState _previousState = RobotState(x: 10, y: 10, speed: 10, battery: 100.0, temperature: 25);

  /// Returns a WebSocket handler function that manages connections and data flow
  Function getHandler() {
    return (webSocket) {
      print('A new client connected');

      // Periodically send robot state updates every second
      final timer = Timer.periodic(Duration(seconds: 1), (timer) {
        try {
          final robotState = _robotGenerationService.generateRobotState(_previousState);
          _previousState = robotState;

          // Send the updated robot state as a JSON object
          webSocket.sink.add(jsonEncode(robotState.toJson()));
        } catch (e) {
          print('Error while sending data: $e');
          timer.cancel();
        }
      });

      // Listen to messages from the client and handle connection termination
      webSocket.stream.listen(
        (message) {
          try {
            final data = jsonDecode(message);
            if (data is Map<String, dynamic>) {
              if (data.containsKey('speed')) {
                UpdateSpeedState updateSpeedState = UpdateSpeedState.fromJson(data);
                _previousState = _previousState.copyWith(speed: updateSpeedState.speed);
                print('Received new speed: ${updateSpeedState.speed}');
              }
            }
          } catch (e) {
            print('Error while processing message: $e');
          }
        },
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

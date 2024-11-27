class RobotState {
  final int x;
  final int y;
  final double speed;
  final int battery;
  final double temperature;

  RobotState({
    required this.x,
    required this.y,
    required this.speed,
    required this.battery,
    required this.temperature,
  });

  Map<String, dynamic> toJson() {
    return {
      'position': {'x': x, 'y': y},
      'speed': speed.toStringAsFixed(2),
      'battery': battery,
      'temperature': temperature.toStringAsFixed(2),
    };
  }
}

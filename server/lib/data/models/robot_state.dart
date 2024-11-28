class RobotState {
  final double x;
  final double y;
  final double speed;
  final double battery;
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
      'speed': speed,
      'battery': battery,
      'temperature': temperature,
    };
  }

  RobotState copyWith({
    double? x,
    double? y,
    double? speed,
    double? battery,
    double? temperature,
  }) {
    return RobotState(
      x: x ?? this.x,
      y: y ?? this.y,
      speed: speed ?? this.speed,
      battery: battery ?? this.battery,
      temperature: temperature ?? this.temperature,
    );
  }
}

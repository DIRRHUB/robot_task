class UpdateSpeedState {
  final double speed;

  UpdateSpeedState({
    required this.speed,
  });

  factory UpdateSpeedState.fromJson(Map<String, dynamic> json) {
    return UpdateSpeedState(
      speed: json['speed'].toDouble(),
    );
  }
}

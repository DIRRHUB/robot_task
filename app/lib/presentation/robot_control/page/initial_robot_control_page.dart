import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_task/domain/entities/robot_item.dart';
import 'package:robot_task/presentation/robot_control/bloc/robot_control_cubit.dart';
import 'package:robot_task/presentation/robot_control/page/components/robot_canvas_painter.dart';
import 'package:robot_task/shared/widgets/one_button.dart';

/// Widget displays the robot's position, allows control of its speed, and provides
/// a button to fetch the initial speed from an API. The robot's movement is
/// animated, and the user can start/stop the robot's operation.
class InitialRobotControlPage extends StatefulWidget {
  const InitialRobotControlPage({
    super.key,
    required this.robot,
    required this.previousRobot,
    required this.speed,
  });

  final RobotItem robot;
  final RobotItem previousRobot;
  final double speed;

  @override
  State<InitialRobotControlPage> createState() => _InitialRobotControlPageState();
}

class _InitialRobotControlPageState extends State<InitialRobotControlPage> with SingleTickerProviderStateMixin {
  late final RobotControlCubit _bloc = BlocProvider.of<RobotControlCubit>(context);
  late AnimationController _controller; // Controller to handle animation.
  late Animation<double> _animation; // Animation to interpolate robot's movement.
  late RobotItem previousRobot; // Stores the previous robot state for interpolation.

  @override
  void initState() {
    super.initState();
    previousRobot = widget.previousRobot;

    // Initialize the animation controller with a duration of 1 second.
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Define the animation for smooth transition between positions.
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void didUpdateWidget(InitialRobotControlPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    // If the robot's state has changed, reset and restart the animation.
    if (widget.robot != previousRobot) {
      setState(() {
        previousRobot = widget.previousRobot;
      });
      _controller.reset();
      _controller.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // A custom painter is used to draw the robot's movement and the background grid.
          child: CustomPaint(
            painter: RobotCanvasPainter(
              robot: widget.robot,
              previousRobot: previousRobot,
              animation: _animation,
              theme: Theme.of(context),
            ),
            size: const Size(702, 702), // Set the canvas size.
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              // Button to fetch the initial speed from the API.
              OneButton(
                text: 'Get initial speed from API',
                onTap: () {
                  _bloc.getInitialSpeed();
                },
              ),
              const SizedBox(width: 16),

              // Button to start or stop the robot's movement based on current speed.
              OneButton(
                text: widget.robot.speed == 0 ? 'Start' : 'Stop',
                onTap: () {
                  _bloc.startOrStop();
                },
              ),
              const SizedBox(width: 16),

              // Slider to adjust the speed of the robot.
              Expanded(
                child: Slider(
                  value: widget.speed,
                  min: 0,
                  max: 100,
                  onChanged: (newSpeed) {
                    _bloc.updateSpeed(newSpeed);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

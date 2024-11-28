import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_task/domain/entities/robot_item.dart';
import 'package:robot_task/presentation/robot_control/bloc/robot_control_cubit.dart';
import 'package:robot_task/presentation/robot_control/page/components/robot_canvas_painter.dart';
import 'package:robot_task/shared/widgets/one_button.dart';

class InitialRobotControlPage extends StatefulWidget {
  const InitialRobotControlPage({super.key, required this.robot, required this.previousRobot, required this.speed});
  final RobotItem robot;
  final RobotItem previousRobot;
  final double speed;

  @override
  State<InitialRobotControlPage> createState() => _InitialRobotControlPageState();
}

class _InitialRobotControlPageState extends State<InitialRobotControlPage> with SingleTickerProviderStateMixin {
  late final RobotControlCubit _bloc = BlocProvider.of<RobotControlCubit>(context);
  late AnimationController _controller;
  late Animation<double> _animation;
  late RobotItem previousRobot;

  @override
  void initState() {
    super.initState();
    previousRobot = widget.previousRobot;
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void didUpdateWidget(InitialRobotControlPage oldWidget) {
    super.didUpdateWidget(oldWidget);
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
          child: CustomPaint(
            painter: RobotCanvasPainter(
              robot: widget.robot,
              previousRobot: previousRobot,
              animation: _animation,
              theme: Theme.of(context),
            ),
            size: const Size(702, 702),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              OneButton(
                text: 'Get initial speed from API',
                onTap: () {
                  _bloc.getInitialSpeed();
                },
              ),
              const SizedBox(width: 16),
              OneButton(
                text: widget.robot.speed == 0 ? 'Start' : 'Stop',
                onTap: () {
                  _bloc.startOrStop();
                },
              ),
              const SizedBox(width: 16),
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

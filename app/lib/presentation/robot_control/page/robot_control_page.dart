import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_task/domain/entities/enums/one_status.dart';
import 'package:robot_task/presentation/robot_control/bloc/robot_control_cubit.dart';
import 'package:robot_task/presentation/robot_control/bloc/robot_control_state.dart';
import 'package:robot_task/presentation/robot_control/page/error_robot_control_page.dart';
import 'package:robot_task/presentation/robot_control/page/initial_robot_control_page.dart';
import 'package:robot_task/start/di.dart';

class RobotControlPage extends StatelessWidget {
  const RobotControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider<RobotControlCubit>(
      create: (_) => serviceLocator()..init(),
      child: Scaffold(
        appBar: AppBar(
            title: Text('Robot Control Panel',
                style: theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.primary))),
        body: BlocConsumer<RobotControlCubit, RobotControlState>(
          listener: (context, state) {
            if (state.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.errorMessage)));
            }
          },
          builder: (context, state) {
            if (state.status == OneStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == OneStatus.initial) {
              return InitialRobotControlPage(
                robot: state.robot,
                previousRobot: state.previousRobot,
                speed: state.speed,
              );
            } else {
              return const ErrorRobotControlPage();
            }
          },
        ),
      ),
    );
  }
}

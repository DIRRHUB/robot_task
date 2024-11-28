import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_task/presentation/robot_control/bloc/robot_control_cubit.dart';
import 'package:robot_task/presentation/robot_control/bloc/robot_control_state.dart';

class ErrorRobotControlPage extends StatelessWidget {
  const ErrorRobotControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RobotControlCubit, RobotControlState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('Error loading robot data'),
                  const SizedBox(height: 16),
                  Text(state.errorMessage),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<RobotControlCubit>(context).init();
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

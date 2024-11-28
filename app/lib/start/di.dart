import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:robot_task/core/constants/api_constants.dart';
import 'package:robot_task/core/services/web_socket_service.dart';
import 'package:robot_task/data/datasources/remote_datasource.dart';
import 'package:robot_task/domain/repositories/remote_repository.dart';
import 'package:robot_task/domain/usecases/connect_to_websocket_usecase.dart';
import 'package:robot_task/domain/usecases/get_initial_speed_usecase.dart';
import 'package:robot_task/domain/usecases/listen_robot_changes_usecase.dart';
import 'package:robot_task/domain/usecases/update_robot_speed_usecase.dart';
import 'package:robot_task/presentation/robot_control/bloc/robot_control_cubit.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerLazySingleton<Dio>(
    () => Dio()
      ..options.baseUrl = ApiConstants.remoteBaseUrl
      ..options.contentType = 'application/json',
  );

  serviceLocator.registerLazySingleton<RemoteDatasource>(
    () => RemoteDatasource(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<WebSocketService>(
    () => WebSocketService(),
  );

  serviceLocator.registerLazySingleton<RemoteRepository>(
    () => RemoteRepository(
      serviceLocator(),
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<RobotControlCubit>(
    () => RobotControlCubit(serviceLocator(), serviceLocator(), serviceLocator(), serviceLocator()),
  );

  serviceLocator.registerLazySingleton<ListenRobotChangesUsecase>(
    () => ListenRobotChangesUsecase(
      remoteRepository: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<ConnectToWebsocketUsecase>(
    () => ConnectToWebsocketUsecase(
      remoteRepository: serviceLocator(),
    ),
  );
  serviceLocator.registerLazySingleton<UpdateRobotSpeedUsecase>(
    () => UpdateRobotSpeedUsecase(
      remoteRepository: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<GetInitialSpeedUsecase>(
    () => GetInitialSpeedUsecase(
      remoteRepository: serviceLocator(),
    ),
  );
}

// lib/services/web_socket_service.dart
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:robot_task/core/base/failure.dart';
import 'package:robot_task/core/helpers/serializable_interface.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

/// A service class that manages WebSocket connections and communication.
///
/// The class provides methods for establishing a connection to a WebSocket server,
/// listening for incoming messages, and sending serialized data to the server.
class WebSocketService {
  WebSocketChannel? _channel;

  /// Connects to a WebSocket server using the provided URL.
  ///
  /// [url] The WebSocket server URL to connect to.

  Future<Either<Failure, void>> connect(String url) async {
    try {
      final Uri wsUri = Uri.parse(url);
      _channel = WebSocketChannel.connect(wsUri);
      try {
        await _channel?.ready;
        return const Right(null);
      } on SocketException catch (e) {
        return Left(ConnectionFailure(message: e.toString()));
      } on WebSocketChannelException catch (e) {
        return Left(ConnectionFailure(message: e.toString()));
      }
    } catch (e) {
      return Left(ConnectionFailure(message: e.toString()));
    }
  }

  /// Listens for incoming messages from the WebSocket server.
  ///
  /// [fromJson] A function that takes raw JSON data and returns an object of type [T].

  Stream<Either<Failure, T>> listen<T>({required T Function(Json) fromJson}) {
    if (_channel == null) {
      return const Stream.empty();
    } else {
      return _channel!.stream.map((event) {
        try {
          final Json jsonData = jsonDecode(event);
          log('Received JSON: $jsonData');
          return Right(fromJson(jsonData));
        } catch (e) {
          return Left(UndefinedTypeFailure(message: 'Undefined type: $event'));
        }
      });
    }
  }

  /// Sends a serialized object to the WebSocket server.
  ///
  /// [model] The object to send, which must implement [Serializable].

  Future<Either<Failure, void>> send<T extends Serializable>({required T model}) async {
    try {
      if (_channel == null) {
        return const Left(ConnectionFailure(message: 'WebSocket is not connected.'));
      }
      _channel?.sink.add(jsonEncode(model.toJson()));
      log('Sent message: ${model.toJson()}');
      return const Right(null);
    } catch (e) {
      return Left(UndefinedTypeFailure(message: 'Error sending message: $e'));
    }
  }
}

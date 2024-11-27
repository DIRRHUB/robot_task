import 'dart:io';

import 'package:server/handlers/web_socket_hander.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';

void main() async {
  final handler = WebSocketHandler().getHandler();
  final HttpServer server = await serve(webSocketHandler(handler), 'localhost', 8080);
  print('WebSocket server started at ws://${server.address.host}:${server.port}');
}

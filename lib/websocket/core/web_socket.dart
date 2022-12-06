import 'package:flutter/material.dart';
import 'package:options_gk/websocket/core/Socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;

class WebSocket implements Socket {
  WebSocket(
      {required this.hostName, required this.port, required this.endpoint});
  WebSocketChannel? channel;
  final String hostName;
  final int port;
  final String endpoint;
  @override
  void init() {}

  @override
  void subscribe(String destination, Function(String json) onData) {
    Uri uri = Uri(scheme: 'ws', host: hostName, port: port, path: endpoint);
    debugPrint('Creating WebSocket connection to ${uri.toString()}');
    channel = WebSocketChannel.connect(uri); //'ws://localhost:8080/socket'
    if (channel != null) {
      channel?.stream.listen((message) {
        onData(message);
      });
    }
  }

  @override
  void send(String data) {
    if (channel != null) {
      channel?.sink.add(data);
    }
  }

  @override
  void close() {
    channel?.sink.close(status.normalClosure, 'User closed session');
  }
}

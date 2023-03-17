// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';

Future<void> ocppServerWebSocketConnection(String? chargeBoxId) async {
  final channel = WebSocketChannel.connect(Uri.parse(
      'ws://18.193.243.175:8080/steve/websocket/CentralSystemService/chargeBoxId'));

  channel.stream.listen((message) {
    final decoded = jsonDecode(message);
    print('Received message: $decoded');
    // Handle incoming messages here
  });

  final message = jsonEncode({'action': 'sampleAction'});
  channel.sink.add(message);

  await channel.sink.close();
}

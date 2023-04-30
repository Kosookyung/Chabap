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
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:crypto/crypto.dart';
import 'package:stream_channel/stream_channel.dart';

Future<void> steveRemoteStart() async {
  final channel = WebSocketChannel.connect(
    Uri.parse(
        'ws://18.193.243.175:8080/steve/websocket/CentralSystemService/00000001'),
  );
  channel.stream.listen((message) {
    // Handle incoming messages from the server
  });

  // Send a remote charging request
  final request = {
    "command": "RemoteStartTransaction",
    "payload": {"connectorId": 1, "idTag": "1010010120220959"}
  };
  channel.sink.add(request.toString());
}

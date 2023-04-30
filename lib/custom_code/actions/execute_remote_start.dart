// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:web_socket_channel/io.dart';
import 'dart:convert';

Future executeRemoteStart(
  String chargeBoxId,
  int connectorId,
) async {
  final channel = IOWebSocketChannel.connect(Uri.parse(
      'ws://18.193.243.175:8080/steve/websocket/CentralSystemService/00000001'));

  // Send an OCPP message to authenticate the client
  final authenticationMessage = jsonEncode({
    "MessageType": "Call",
    "Action": "Authorize",
    "Payload": {"idTag": "1010010120220959"}
  });
  channel.sink.add(authenticationMessage);

  // Send an OCPP message to start the transaction
  final startTransactionMessage = jsonEncode({
    "MessageType": "Call",
    "Action": "RemoteStartTransaction",
    "Payload": {"chargeBoxId": chargeBoxId, "connectorId": connectorId}
  });
  channel.sink.add(startTransactionMessage);

  // Listen for response messages from the server
  await for (var message in channel.stream) {
    print(message);
    // Handle the response message
    // ...
  }

  // Close the WebSocket channel
  channel.sink.close();
}

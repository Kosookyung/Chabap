// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  // 웹소켓 채널을 생성
  final WebSocketChannel channel =
      // 웹 서버에 접속 시도
      IOWebSocketChannel.connect(
          'ws://18.193.243.175:8080/steve/websocket/CentralSystemService/00000001');

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 상태 변화가 일어나는 필드
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 앱바에 타이틀 텍스트 설정. widget을 통해 MyHomePage의 필드에 접근 가능
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Form(
              child: TextFormField(
                // 컨트롤러 항목에 _controller 설정
                controller: _controller,
                decoration: InputDecoration(labelText: 'Send a message'),
              ),
            ),
            // Stream을 처리하기 위한 StreamBuilder 추가
            StreamBuilder(
              // 채널의 스트림을 stream 항목에 설정. widget을 통해 MyHomePage의 필드에 접근 가능
              stream: widget.channel.stream,
              // 채널 stream에 변화가 발생하면 빌더 호출
              builder: (context, snapshot) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  // 수신 데이터가 존재할 경우 해당 데이터를 텍스트로 출력
                  child: Text(snapshot.hasData ? '${snapshot.data}' : ''),
                );
              },
            )
          ],
        ),
      ),
      // 플로팅 버튼이 눌리면 _sendMessage 함수 호출
      floatingActionButton: FloatingActionButton(
          onPressed: _sendMessage,
          tooltip: 'Send message',
          child: Icon(Icons.send)),
    );
  }

  // 플로팅 버튼이 눌리면 호출
  void _sendMessage() {
    // TextFormField에 입력된 텍스트가 존재하면
    if (_controller.text.isNotEmpty) {
      // 해당 텍스트를 서버로 전송. widget을 통해 MyHomePage의 필드에 접근 가능
      widget.channel.sink.add(_controller.text);
    }
  }

  // 상태 클래스가 종료될 때 호출
  @override
  void dispose() {
    // 채널을 닫음
    widget.channel.sink.close();
    super.dispose();
  }
}

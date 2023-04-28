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

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
import 'package:firebase_auth/firebase_auth.dart' as Fa;
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
//import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
//import 'package:firebase_auth_web/firebase_auth_web.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
//import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

class KakaotalkLogin extends StatefulWidget {
  const KakaotalkLogin({
    Key? key,
    this.width,
    this.height,
    required this.action,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() action;

  @override
  _KakaotalkLoginState createState() => _KakaotalkLoginState();
}

class _KakaotalkLoginState extends State<KakaotalkLogin> {
  @override
  Widget build(BuildContext context) {
    //  KakaoContext.clientId = '2b58c2c4c6792abc05e9d323b1ebab4e';
    //KakaoSdk.init(nativeAppKey: '2b58c2c4c6792abc05e9d323b1ebab4e');
    return Container(
      child: ElevatedButton(
          onPressed: () async {
            // 카카오 로그인 구현 예제

// 카카오톡 실행 가능 여부 확인
// 카카오톡 실행이 가능하면 카카오톡으로 로그인, 아니면 카카오계정으로 로그인
            if (await isKakaoTalkInstalled()) {
              try {
                await UserApi.instance.loginWithKakaoTalk();
                print('카카오톡으로 로그인 성공');
              } catch (error) {
                print('카카오톡으로 로그인 실패 $error');

                // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
                // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
                if (error is PlatformException && error.code == 'CANCELED') {
                  return;
                }
                // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
                try {
                  await UserApi.instance.loginWithKakaoAccount();
                  print('카카오계정으로 로그인 성공');
                } catch (error) {
                  print('카카오계정으로 로그인 실패 $error');
                }
              }
            } else {
              try {
                await UserApi.instance.loginWithKakaoAccount();
                print('카카오계정으로 로그인 성공');
              } catch (error) {
                print('카카오계정으로 로그인 실패 $error');
              }
            }

            User user;
            try {
              user = await UserApi.instance.me();

              print('사용자 정보 요청 성공'
                  '\n회원번호: ${user.id}'
                  '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
                  '\n이메일: ${user.kakaoAccount?.email}');
            } catch (error) {
              print('사용자 정보 요청 실패 $error');
              return;
            }

            final email = 'kakao${user.id}@email.com';
            final password = 'ka8~${user.id}A,*';

            Fa.User? faUser;

            try {
              final cred =
                  await Fa.FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: email,
                password: password,
              );

              faUser = cred.user!;

              final data = {
                'faUser.uid': faUser.uid,
                'email': user.kakaoAccount?.email ?? '',
                'nickname': user.kakaoAccount?.profile?.nickname,
                'photoUrl': user.kakaoAccount?.profile?.thumbnailImageUrl,
                'created_time': DateTime.now(),
              };
              FirebaseFirestore.instance
                  .collection('users')
                  .doc('faUser.uid')
                  .set(data);

              print('파이어베이스 -> 회원 가입 성공');
              widget.action();
            } on Fa.FirebaseAuthException catch (e) {
              if (e.code == 'email-already-in-use') {
                print('이미 가입된 이메일입니다.');
                final cred = await Fa.FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: email, password: password);

                print('파이어베이스 -> 회원 로그인 성공, uid: ${cred.user?.uid}');
                widget.action();
              } else {
                print('$e');
                rethrow;
              }
            } catch (e) {
              print('파이어베이스 -> 회원 가입 실패 $e');
              rethrow;
            }
          },
          child: Text('카카오 로그인')),
    );
  }
}

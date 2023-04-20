// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart';
import 'package:platform/platform.dart';
import 'package:kakao_flutter_sdk_navi/kakao_flutter_sdk_navi.dart';
import 'package:kakao_flutter_sdk_common/kakao_flutter_sdk_common.dart';
import 'package:json_annotation/json_annotation.dart';

Future kakaoNavi(BuildContext context) async {
  KakaoSdk.init(
      nativeAppKey: '8a75a6acc2aee4dcd96331240f84b157',
      javaScriptAppKey: 'c42d32dfb92ce9cfc0d4351d9aaab89b');

  bool result = await NaviApi.instance.isKakaoNaviInstalled();
  if (result) {
    print('카카오내비 앱으로 길안내 가능');
  } else {
    print('카카오내비 미설치');
    // 카카오내비 설치 페이지로 이동
    launchBrowserTab(Uri.parse(NaviApi.webNaviInstall));
  }

  if (await NaviApi.instance.isKakaoNaviInstalled()) {
    // 카카오내비 앱으로 길 안내하기, WGS84 좌표계 사용
    await NaviApi.instance.navigate(
      destination: Location(name: '카카오 판교오피스', x: '127.108640', y: '37.402111'),
      option: NaviOption(coordType: CoordType.wgs84),
      //viaList: [
      //  Location(name: '판교역 1번출구', x: '127.111492', y: '37.395225'),
      //],
    );
  } else {
    // 카카오내비 설치 페이지로 이동
    launchBrowserTab(Uri.parse(NaviApi.webNaviInstall));
  }
}

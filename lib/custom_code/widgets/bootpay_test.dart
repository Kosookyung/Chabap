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

import 'package:bootpay/bootpay.dart';
import 'package:bootpay/model/extra.dart';
import 'package:bootpay/model/item.dart';
import 'package:bootpay/model/payload.dart';
import 'package:bootpay/model/stat_item.dart';
import 'package:bootpay/model/user.dart';
import 'package:flutter/foundation.dart';

class BootpayTest extends StatefulWidget {
  const BootpayTest({
    Key? key,
    this.width,
    this.height,
    this.price,
    this.userEmail,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? price;
  final String? userEmail;

  @override
  _BootpayTestState createState() => _BootpayTestState();
}

class _BootpayTestState extends State<BootpayTest> {
  String webApplicationId = '63e33d89755e27001c59dddf';
  String androidApplicationId = '63e33d89755e27001c59dde0';
  String iosApplicationId = '63e33d89755e27001c59dde1';

  @override
  Widget build(BuildContext context) {
    // Access the updated count variable
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: TextButton(
                    onPressed: () => bootpayTest(context),
                    child: const Text('차밥 결제',
                        style: TextStyle(fontSize: 16.0))))));
  }

  void bootpayTest(BuildContext context) {
    Payload payload = getPayload();
    if (kIsWeb) {
      payload.extra?.openType = "iframe";
    }

    Bootpay().requestPayment(
      context: context,
      payload: payload,
      showCloseButton: false,
      // closeButton: Icon(Icons.close, size: 35.0, color: Colors.black54),
      onCancel: (String data) {
        print('------- onCancel: $data');
      },
      onError: (String data) {
        print('------- onCancel: $data');
      },
      onClose: () {
        print('------- onClose');
        Bootpay().dismiss(context); //명시적으로 부트페이 뷰 종료 호출
        //TODO - 원하시는 라우터로 페이지 이동
      },
      onIssued: (String data) {
        print('------- onIssued: $data');
      },
      onConfirm: (String data) {
        /**
            1. 바로 승인하고자 할 때
            return true;
         **/
        /***
            2. 클라이언트 승인 하고자 할 때
            Bootpay().transactionConfirm();
            return false;
         ***/
        /***
            3. 서버승인을 하고자 하실 때 (클라이언트 승인 X)
            return false; 후에 서버에서 결제승인 수행
         */
        Bootpay().transactionConfirm();
        return false;
      },
      onDone: (String data) {
        print('------- onDone: $data');
      },
    );
  }

  Payload getPayload() {
    Payload payload = Payload();
    Item item = Item();
    item.name = "productName";
    item.qty = 1; // 해당 상품의 주문 수량
    item.id = "전기차충전"; // 해당 상품의 고유 키
    item.price = widget.price; // 상품의 가격

    List<Item> itemList = [item];

    payload.webApplicationId = webApplicationId; // web application id
    payload.androidApplicationId =
        androidApplicationId; // android application id
    payload.iosApplicationId = iosApplicationId; // ios application id

    payload.pg = 'kcp';
    //payload.method = '카드';
    // payload.methods = ['card', 'phone', 'vbank', 'bank', 'kakao'];
    payload.orderName = "차밥 충전"; //결제할 상품명
    payload.price = widget.price; //정기결제시 0 혹은 주석

    payload.orderId = DateTime.now()
        .millisecondsSinceEpoch
        .toString(); //주문번호, 개발사에서 고유값으로 지정해야함

    payload.metadata = {
      "callbackParam1": "value12",
      "callbackParam2": "value34",
      "callbackParam3": "value56",
      "callbackParam4": "value78",
    }; // 전달할 파라미터, 결제 후 되돌려 주는 값
    payload.items = itemList; // 상품정보 배열

    User user = User(); // 구매자 정보
    user.username = "이름";
    user.email = "chabap@email.com";
    user.area = "서울";
    user.phone = "010-4033-4678";
    user.addr = '서울시 동작구 상도로 222';

    Extra extra = Extra(); // 결제 옵션
    extra.appScheme = 'bootpayFlutterExample';
    extra.cardQuota = '3';
    // extra.openType = 'popup';

    // extra.carrier = "SKT,KT,LGT"; //본인인증 시 고정할 통신사명
    // extra.ageLimit = 20; // 본인인증시 제한할 최소 나이 ex) 20 -> 20살 이상만 인증이 가능

    payload.user = user;
    payload.extra = extra;
    return payload;
  }
}

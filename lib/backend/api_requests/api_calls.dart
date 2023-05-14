import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SteveTransActionsCall {
  static Future<ApiCallResponse> call({
    String? idTag = '',
    String? chargeBoxId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'SteveTransActions',
      apiUrl: 'http://18.193.243.175:8080/steve/api/v1/transactions',
      callType: ApiCallType.GET,
      headers: {
        'STEVE-API-KEY': '12345',
        'Content-Type': 'appliction/json',
      },
      params: {
        'idTag': idTag,
        'chargeBoxId': chargeBoxId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic startValue(dynamic response) => getJsonField(
        response,
        r'''$[0].startValue''',
      );
  static dynamic stopValue(dynamic response) => getJsonField(
        response,
        r'''$[0].stopValue''',
      );
  static dynamic chargeBoxId(dynamic response) => getJsonField(
        response,
        r'''$[0].chargeBoxId''',
      );
}

class OcppTagsGetCall {
  static Future<ApiCallResponse> call({
    String? idTag = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'OcppTagsGet',
      apiUrl: 'http://18.193.243.175:8080/steve/api/v1/ocppTags',
      callType: ApiCallType.GET,
      headers: {
        'STEVE-API-KEY': '12345',
        'Content-Type': 'appliction/json',
      },
      params: {
        'idTag': idTag,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class OcppTagsPostCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'OcppTagsPost',
      apiUrl: 'http://18.193.243.175:8080/steve/api/v1/ocppTags',
      callType: ApiCallType.POST,
      headers: {
        'STEVE-API-KEY': '12345',
        'Content-Type': 'appliction/json',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SessionsCall {
  static Future<ApiCallResponse> call({
    String? connector = '645dc219a448ff6e422719d4',
    String? user = '63e307ae3add8e7c9bdabc90',
    dynamic? targetJson,
    dynamic? configurelationsJson,
    dynamic? metaDataJson,
  }) {
    final target = _serializeJson(targetJson);
    final configurelations = _serializeJson(configurelationsJson);
    final metaData = _serializeJson(metaDataJson);
    final body = '''
{
  "connect": "${connector}",
  "user": "${user}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sessions',
      apiUrl: 'https://api.edrv.io/v1.1/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'appliction/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer rEhwIwmnyY4plJDj6QJRmGqwC6TG9Fstn9zMLxEj',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}

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

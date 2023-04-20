import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

double? meterValueMinus(
  String? startValue,
  String? stopValue,
  double? meterValue,
) {
  meterValue = (int.parse(stopValue!) - int.parse(startValue!)) / 10;

  return meterValue;
}

double? priceMutiple(
  double? meterValue,
  double? price,
  double? unitPrice,
) {
  price = meterValue! * unitPrice!;

  return price;
}

double? jsonStringToDouble(
  String? val,
  double? result,
) {
  result = double.parse(val!);
  return result;
// -> 1.8
}

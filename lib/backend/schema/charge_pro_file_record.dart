import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'charge_pro_file_record.g.dart';

abstract class ChargeProFileRecord
    implements Built<ChargeProFileRecord, ChargeProFileRecordBuilder> {
  static Serializer<ChargeProFileRecord> get serializer =>
      _$chargeProFileRecordSerializer;

  double? get chargeAmount;

  double? get price;

  double? get startValue;

  double? get stopValue;

  DocumentReference? get uid;

  String? get chargeBoxId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChargeProFileRecordBuilder builder) => builder
    ..chargeAmount = 0.0
    ..price = 0.0
    ..startValue = 0.0
    ..stopValue = 0.0
    ..chargeBoxId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chargeProFile');

  static Stream<ChargeProFileRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChargeProFileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChargeProFileRecord._();
  factory ChargeProFileRecord(
          [void Function(ChargeProFileRecordBuilder) updates]) =
      _$ChargeProFileRecord;

  static ChargeProFileRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChargeProFileRecordData({
  double? chargeAmount,
  double? price,
  double? startValue,
  double? stopValue,
  DocumentReference? uid,
  String? chargeBoxId,
}) {
  final firestoreData = serializers.toFirestore(
    ChargeProFileRecord.serializer,
    ChargeProFileRecord(
      (c) => c
        ..chargeAmount = chargeAmount
        ..price = price
        ..startValue = startValue
        ..stopValue = stopValue
        ..uid = uid
        ..chargeBoxId = chargeBoxId,
    ),
  );

  return firestoreData;
}

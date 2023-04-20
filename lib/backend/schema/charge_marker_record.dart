import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'charge_marker_record.g.dart';

abstract class ChargeMarkerRecord
    implements Built<ChargeMarkerRecord, ChargeMarkerRecordBuilder> {
  static Serializer<ChargeMarkerRecord> get serializer =>
      _$chargeMarkerRecordSerializer;

  String? get name;

  LatLng? get location;

  double? get latitude;

  double? get logittude;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChargeMarkerRecordBuilder builder) => builder
    ..name = ''
    ..latitude = 0.0
    ..logittude = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ChargeMarker');

  static Stream<ChargeMarkerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChargeMarkerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChargeMarkerRecord._();
  factory ChargeMarkerRecord(
          [void Function(ChargeMarkerRecordBuilder) updates]) =
      _$ChargeMarkerRecord;

  static ChargeMarkerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChargeMarkerRecordData({
  String? name,
  LatLng? location,
  double? latitude,
  double? logittude,
}) {
  final firestoreData = serializers.toFirestore(
    ChargeMarkerRecord.serializer,
    ChargeMarkerRecord(
      (c) => c
        ..name = name
        ..location = location
        ..latitude = latitude
        ..logittude = logittude,
    ),
  );

  return firestoreData;
}

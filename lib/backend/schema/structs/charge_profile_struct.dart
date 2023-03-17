import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'charge_profile_struct.g.dart';

abstract class ChargeProfileStruct
    implements Built<ChargeProfileStruct, ChargeProfileStructBuilder> {
  static Serializer<ChargeProfileStruct> get serializer =>
      _$chargeProfileStructSerializer;

  double? get startValue;

  double? get stopValue;

  DocumentReference? get uid;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ChargeProfileStructBuilder builder) => builder
    ..startValue = 0.0
    ..stopValue = 0.0
    ..firestoreUtilData = FirestoreUtilData();

  ChargeProfileStruct._();
  factory ChargeProfileStruct(
          [void Function(ChargeProfileStructBuilder) updates]) =
      _$ChargeProfileStruct;
}

ChargeProfileStruct createChargeProfileStruct({
  double? startValue,
  double? stopValue,
  DocumentReference? uid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChargeProfileStruct(
      (c) => c
        ..startValue = startValue
        ..stopValue = stopValue
        ..uid = uid
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ChargeProfileStruct? updateChargeProfileStruct(
  ChargeProfileStruct? chargeProfile, {
  bool clearUnsetFields = true,
}) =>
    chargeProfile != null
        ? (chargeProfile.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addChargeProfileStructData(
  Map<String, dynamic> firestoreData,
  ChargeProfileStruct? chargeProfile,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chargeProfile == null) {
    return;
  }
  if (chargeProfile.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && chargeProfile.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chargeProfileData =
      getChargeProfileFirestoreData(chargeProfile, forFieldValue);
  final nestedData =
      chargeProfileData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = chargeProfile.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getChargeProfileFirestoreData(
  ChargeProfileStruct? chargeProfile, [
  bool forFieldValue = false,
]) {
  if (chargeProfile == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ChargeProfileStruct.serializer, chargeProfile);

  // Add any Firestore field values
  chargeProfile.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChargeProfileListFirestoreData(
  List<ChargeProfileStruct>? chargeProfiles,
) =>
    chargeProfiles
        ?.map((c) => getChargeProfileFirestoreData(c, true))
        .toList() ??
    [];

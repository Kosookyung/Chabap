// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_profile_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChargeProfileStruct> _$chargeProfileStructSerializer =
    new _$ChargeProfileStructSerializer();

class _$ChargeProfileStructSerializer
    implements StructuredSerializer<ChargeProfileStruct> {
  @override
  final Iterable<Type> types = const [
    ChargeProfileStruct,
    _$ChargeProfileStruct
  ];
  @override
  final String wireName = 'ChargeProfileStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChargeProfileStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.startValue;
    if (value != null) {
      result
        ..add('startValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.stopValue;
    if (value != null) {
      result
        ..add('stopValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ChargeProfileStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChargeProfileStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'startValue':
          result.startValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'stopValue':
          result.stopValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ChargeProfileStruct extends ChargeProfileStruct {
  @override
  final double? startValue;
  @override
  final double? stopValue;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ChargeProfileStruct(
          [void Function(ChargeProfileStructBuilder)? updates]) =>
      (new ChargeProfileStructBuilder()..update(updates))._build();

  _$ChargeProfileStruct._(
      {this.startValue,
      this.stopValue,
      this.uid,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ChargeProfileStruct', 'firestoreUtilData');
  }

  @override
  ChargeProfileStruct rebuild(
          void Function(ChargeProfileStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChargeProfileStructBuilder toBuilder() =>
      new ChargeProfileStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChargeProfileStruct &&
        startValue == other.startValue &&
        stopValue == other.stopValue &&
        uid == other.uid &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startValue.hashCode);
    _$hash = $jc(_$hash, stopValue.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargeProfileStruct')
          ..add('startValue', startValue)
          ..add('stopValue', stopValue)
          ..add('uid', uid)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ChargeProfileStructBuilder
    implements Builder<ChargeProfileStruct, ChargeProfileStructBuilder> {
  _$ChargeProfileStruct? _$v;

  double? _startValue;
  double? get startValue => _$this._startValue;
  set startValue(double? startValue) => _$this._startValue = startValue;

  double? _stopValue;
  double? get stopValue => _$this._stopValue;
  set stopValue(double? stopValue) => _$this._stopValue = stopValue;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ChargeProfileStructBuilder() {
    ChargeProfileStruct._initializeBuilder(this);
  }

  ChargeProfileStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startValue = $v.startValue;
      _stopValue = $v.stopValue;
      _uid = $v.uid;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChargeProfileStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChargeProfileStruct;
  }

  @override
  void update(void Function(ChargeProfileStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChargeProfileStruct build() => _build();

  _$ChargeProfileStruct _build() {
    final _$result = _$v ??
        new _$ChargeProfileStruct._(
            startValue: startValue,
            stopValue: stopValue,
            uid: uid,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'ChargeProfileStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

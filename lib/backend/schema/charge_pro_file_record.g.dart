// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_pro_file_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChargeProFileRecord> _$chargeProFileRecordSerializer =
    new _$ChargeProFileRecordSerializer();

class _$ChargeProFileRecordSerializer
    implements StructuredSerializer<ChargeProFileRecord> {
  @override
  final Iterable<Type> types = const [
    ChargeProFileRecord,
    _$ChargeProFileRecord
  ];
  @override
  final String wireName = 'ChargeProFileRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChargeProFileRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.chargeAmount;
    if (value != null) {
      result
        ..add('chargeAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
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
    value = object.chargeBoxId;
    if (value != null) {
      result
        ..add('chargeBoxId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ChargeProFileRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChargeProFileRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'chargeAmount':
          result.chargeAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
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
        case 'chargeBoxId':
          result.chargeBoxId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ChargeProFileRecord extends ChargeProFileRecord {
  @override
  final double? chargeAmount;
  @override
  final double? price;
  @override
  final double? startValue;
  @override
  final double? stopValue;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final String? chargeBoxId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChargeProFileRecord(
          [void Function(ChargeProFileRecordBuilder)? updates]) =>
      (new ChargeProFileRecordBuilder()..update(updates))._build();

  _$ChargeProFileRecord._(
      {this.chargeAmount,
      this.price,
      this.startValue,
      this.stopValue,
      this.uid,
      this.chargeBoxId,
      this.ffRef})
      : super._();

  @override
  ChargeProFileRecord rebuild(
          void Function(ChargeProFileRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChargeProFileRecordBuilder toBuilder() =>
      new ChargeProFileRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChargeProFileRecord &&
        chargeAmount == other.chargeAmount &&
        price == other.price &&
        startValue == other.startValue &&
        stopValue == other.stopValue &&
        uid == other.uid &&
        chargeBoxId == other.chargeBoxId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, chargeAmount.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, startValue.hashCode);
    _$hash = $jc(_$hash, stopValue.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, chargeBoxId.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargeProFileRecord')
          ..add('chargeAmount', chargeAmount)
          ..add('price', price)
          ..add('startValue', startValue)
          ..add('stopValue', stopValue)
          ..add('uid', uid)
          ..add('chargeBoxId', chargeBoxId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChargeProFileRecordBuilder
    implements Builder<ChargeProFileRecord, ChargeProFileRecordBuilder> {
  _$ChargeProFileRecord? _$v;

  double? _chargeAmount;
  double? get chargeAmount => _$this._chargeAmount;
  set chargeAmount(double? chargeAmount) => _$this._chargeAmount = chargeAmount;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  double? _startValue;
  double? get startValue => _$this._startValue;
  set startValue(double? startValue) => _$this._startValue = startValue;

  double? _stopValue;
  double? get stopValue => _$this._stopValue;
  set stopValue(double? stopValue) => _$this._stopValue = stopValue;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  String? _chargeBoxId;
  String? get chargeBoxId => _$this._chargeBoxId;
  set chargeBoxId(String? chargeBoxId) => _$this._chargeBoxId = chargeBoxId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChargeProFileRecordBuilder() {
    ChargeProFileRecord._initializeBuilder(this);
  }

  ChargeProFileRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _chargeAmount = $v.chargeAmount;
      _price = $v.price;
      _startValue = $v.startValue;
      _stopValue = $v.stopValue;
      _uid = $v.uid;
      _chargeBoxId = $v.chargeBoxId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChargeProFileRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChargeProFileRecord;
  }

  @override
  void update(void Function(ChargeProFileRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChargeProFileRecord build() => _build();

  _$ChargeProFileRecord _build() {
    final _$result = _$v ??
        new _$ChargeProFileRecord._(
            chargeAmount: chargeAmount,
            price: price,
            startValue: startValue,
            stopValue: stopValue,
            uid: uid,
            chargeBoxId: chargeBoxId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

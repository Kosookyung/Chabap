// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_marker_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChargeMarkerRecord> _$chargeMarkerRecordSerializer =
    new _$ChargeMarkerRecordSerializer();

class _$ChargeMarkerRecordSerializer
    implements StructuredSerializer<ChargeMarkerRecord> {
  @override
  final Iterable<Type> types = const [ChargeMarkerRecord, _$ChargeMarkerRecord];
  @override
  final String wireName = 'ChargeMarkerRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChargeMarkerRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  ChargeMarkerRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChargeMarkerRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$ChargeMarkerRecord extends ChargeMarkerRecord {
  @override
  final String? name;
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChargeMarkerRecord(
          [void Function(ChargeMarkerRecordBuilder)? updates]) =>
      (new ChargeMarkerRecordBuilder()..update(updates))._build();

  _$ChargeMarkerRecord._({this.name, this.location, this.ffRef}) : super._();

  @override
  ChargeMarkerRecord rebuild(
          void Function(ChargeMarkerRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChargeMarkerRecordBuilder toBuilder() =>
      new ChargeMarkerRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChargeMarkerRecord &&
        name == other.name &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), location.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargeMarkerRecord')
          ..add('name', name)
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChargeMarkerRecordBuilder
    implements Builder<ChargeMarkerRecord, ChargeMarkerRecordBuilder> {
  _$ChargeMarkerRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChargeMarkerRecordBuilder() {
    ChargeMarkerRecord._initializeBuilder(this);
  }

  ChargeMarkerRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChargeMarkerRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChargeMarkerRecord;
  }

  @override
  void update(void Function(ChargeMarkerRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChargeMarkerRecord build() => _build();

  _$ChargeMarkerRecord _build() {
    final _$result = _$v ??
        new _$ChargeMarkerRecord._(
            name: name, location: location, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

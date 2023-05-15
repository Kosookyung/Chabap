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
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qty;
    if (value != null) {
      result
        ..add('qty')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favoriteIs;
    if (value != null) {
      result
        ..add('favorite_is')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.connector;
    if (value != null) {
      result
        ..add('connector')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.power;
    if (value != null) {
      result
        ..add('power')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'qty':
          result.qty = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favorite_is':
          result.favoriteIs = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'connector':
          result.connector.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'power':
          result.power = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
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

class _$ChargeMarkerRecord extends ChargeMarkerRecord {
  @override
  final String? name;
  @override
  final LatLng? location;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final int? qty;
  @override
  final String? status;
  @override
  final bool? favoriteIs;
  @override
  final BuiltList<int>? connector;
  @override
  final String? power;
  @override
  final String? type;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChargeMarkerRecord(
          [void Function(ChargeMarkerRecordBuilder)? updates]) =>
      (new ChargeMarkerRecordBuilder()..update(updates))._build();

  _$ChargeMarkerRecord._(
      {this.name,
      this.location,
      this.latitude,
      this.longitude,
      this.qty,
      this.status,
      this.favoriteIs,
      this.connector,
      this.power,
      this.type,
      this.ffRef})
      : super._();

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
        latitude == other.latitude &&
        longitude == other.longitude &&
        qty == other.qty &&
        status == other.status &&
        favoriteIs == other.favoriteIs &&
        connector == other.connector &&
        power == other.power &&
        type == other.type &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, qty.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, favoriteIs.hashCode);
    _$hash = $jc(_$hash, connector.hashCode);
    _$hash = $jc(_$hash, power.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChargeMarkerRecord')
          ..add('name', name)
          ..add('location', location)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('qty', qty)
          ..add('status', status)
          ..add('favoriteIs', favoriteIs)
          ..add('connector', connector)
          ..add('power', power)
          ..add('type', type)
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

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  int? _qty;
  int? get qty => _$this._qty;
  set qty(int? qty) => _$this._qty = qty;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _favoriteIs;
  bool? get favoriteIs => _$this._favoriteIs;
  set favoriteIs(bool? favoriteIs) => _$this._favoriteIs = favoriteIs;

  ListBuilder<int>? _connector;
  ListBuilder<int> get connector =>
      _$this._connector ??= new ListBuilder<int>();
  set connector(ListBuilder<int>? connector) => _$this._connector = connector;

  String? _power;
  String? get power => _$this._power;
  set power(String? power) => _$this._power = power;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

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
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _qty = $v.qty;
      _status = $v.status;
      _favoriteIs = $v.favoriteIs;
      _connector = $v.connector?.toBuilder();
      _power = $v.power;
      _type = $v.type;
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
    _$ChargeMarkerRecord _$result;
    try {
      _$result = _$v ??
          new _$ChargeMarkerRecord._(
              name: name,
              location: location,
              latitude: latitude,
              longitude: longitude,
              qty: qty,
              status: status,
              favoriteIs: favoriteIs,
              connector: _connector?.build(),
              power: power,
              type: type,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connector';
        _connector?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChargeMarkerRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

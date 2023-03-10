// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotels_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HotelsRecord> _$hotelsRecordSerializer =
    new _$HotelsRecordSerializer();

class _$HotelsRecordSerializer implements StructuredSerializer<HotelsRecord> {
  @override
  final Iterable<Type> types = const [HotelsRecord, _$HotelsRecord];
  @override
  final String wireName = 'HotelsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, HotelsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  HotelsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HotelsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$HotelsRecord extends HotelsRecord {
  @override
  final String? city;
  @override
  final String? description;
  @override
  final String? name;
  @override
  final int? rating;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HotelsRecord([void Function(HotelsRecordBuilder)? updates]) =>
      (new HotelsRecordBuilder()..update(updates))._build();

  _$HotelsRecord._(
      {this.city, this.description, this.name, this.rating, this.ffRef})
      : super._();

  @override
  HotelsRecord rebuild(void Function(HotelsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HotelsRecordBuilder toBuilder() => new HotelsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HotelsRecord &&
        city == other.city &&
        description == other.description &&
        name == other.name &&
        rating == other.rating &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, city.hashCode), description.hashCode),
                name.hashCode),
            rating.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HotelsRecord')
          ..add('city', city)
          ..add('description', description)
          ..add('name', name)
          ..add('rating', rating)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HotelsRecordBuilder
    implements Builder<HotelsRecord, HotelsRecordBuilder> {
  _$HotelsRecord? _$v;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HotelsRecordBuilder() {
    HotelsRecord._initializeBuilder(this);
  }

  HotelsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _description = $v.description;
      _name = $v.name;
      _rating = $v.rating;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HotelsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HotelsRecord;
  }

  @override
  void update(void Function(HotelsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HotelsRecord build() => _build();

  _$HotelsRecord _build() {
    final _$result = _$v ??
        new _$HotelsRecord._(
            city: city,
            description: description,
            name: name,
            rating: rating,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

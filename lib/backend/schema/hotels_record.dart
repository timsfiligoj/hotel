import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hotels_record.g.dart';

abstract class HotelsRecord
    implements Built<HotelsRecord, HotelsRecordBuilder> {
  static Serializer<HotelsRecord> get serializer => _$hotelsRecordSerializer;

  String? get city;

  String? get description;

  String? get name;

  int? get rating;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HotelsRecordBuilder builder) => builder
    ..city = ''
    ..description = ''
    ..name = ''
    ..rating = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Hotels');

  static Stream<HotelsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HotelsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HotelsRecord._();
  factory HotelsRecord([void Function(HotelsRecordBuilder) updates]) =
      _$HotelsRecord;

  static HotelsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHotelsRecordData({
  String? city,
  String? description,
  String? name,
  int? rating,
}) {
  final firestoreData = serializers.toFirestore(
    HotelsRecord.serializer,
    HotelsRecord(
      (h) => h
        ..city = city
        ..description = description
        ..name = name
        ..rating = rating,
    ),
  );

  return firestoreData;
}

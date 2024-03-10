import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class KualitasUdaraRecord extends FirestoreRecord {
  KualitasUdaraRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "AQI" field.
  double? _aqi;
  double get aqi => _aqi ?? 0.0;
  bool hasAqi() => _aqi != null;

  void _initializeFields() {
    _aqi = castToType<double>(snapshotData['AQI']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('kualitasUdara');

  static Stream<KualitasUdaraRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => KualitasUdaraRecord.fromSnapshot(s));

  static Future<KualitasUdaraRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => KualitasUdaraRecord.fromSnapshot(s));

  static KualitasUdaraRecord fromSnapshot(DocumentSnapshot snapshot) =>
      KualitasUdaraRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static KualitasUdaraRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      KualitasUdaraRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'KualitasUdaraRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is KualitasUdaraRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createKualitasUdaraRecordData({
  double? aqi,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AQI': aqi,
    }.withoutNulls,
  );

  return firestoreData;
}

class KualitasUdaraRecordDocumentEquality
    implements Equality<KualitasUdaraRecord> {
  const KualitasUdaraRecordDocumentEquality();

  @override
  bool equals(KualitasUdaraRecord? e1, KualitasUdaraRecord? e2) {
    return e1?.aqi == e2?.aqi;
  }

  @override
  int hash(KualitasUdaraRecord? e) => const ListEquality().hash([e?.aqi]);

  @override
  bool isValidKey(Object? o) => o is KualitasUdaraRecord;
}

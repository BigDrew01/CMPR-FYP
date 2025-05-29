import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnonymousReportRecord extends FirestoreRecord {
  AnonymousReportRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reportId" field.
  String? _reportId;
  String get reportId => _reportId ?? '';
  bool hasReportId() => _reportId != null;

  // "typeOfCrime" field.
  String? _typeOfCrime;
  String get typeOfCrime => _typeOfCrime ?? '';
  bool hasTypeOfCrime() => _typeOfCrime != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "briefDescription" field.
  String? _briefDescription;
  String get briefDescription => _briefDescription ?? '';
  bool hasBriefDescription() => _briefDescription != null;

  // "suspectDetails" field.
  String? _suspectDetails;
  String get suspectDetails => _suspectDetails ?? '';
  bool hasSuspectDetails() => _suspectDetails != null;

  // "emergencyLevel" field.
  String? _emergencyLevel;
  String get emergencyLevel => _emergencyLevel ?? '';
  bool hasEmergencyLevel() => _emergencyLevel != null;

  // "needForImmediateResponse" field.
  bool? _needForImmediateResponse;
  bool get needForImmediateResponse => _needForImmediateResponse ?? false;
  bool hasNeedForImmediateResponse() => _needForImmediateResponse != null;

  // "photosOrVideos" field.
  List<String>? _photosOrVideos;
  List<String> get photosOrVideos => _photosOrVideos ?? const [];
  bool hasPhotosOrVideos() => _photosOrVideos != null;

  // "witnessInformation" field.
  String? _witnessInformation;
  String get witnessInformation => _witnessInformation ?? '';
  bool hasWitnessInformation() => _witnessInformation != null;

  // "additionalDocuments" field.
  String? _additionalDocuments;
  String get additionalDocuments => _additionalDocuments ?? '';
  bool hasAdditionalDocuments() => _additionalDocuments != null;

  void _initializeFields() {
    _reportId = snapshotData['reportId'] as String?;
    _typeOfCrime = snapshotData['typeOfCrime'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _location = snapshotData['location'] as LatLng?;
    _briefDescription = snapshotData['briefDescription'] as String?;
    _suspectDetails = snapshotData['suspectDetails'] as String?;
    _emergencyLevel = snapshotData['emergencyLevel'] as String?;
    _needForImmediateResponse =
        snapshotData['needForImmediateResponse'] as bool?;
    _photosOrVideos = getDataList(snapshotData['photosOrVideos']);
    _witnessInformation = snapshotData['witnessInformation'] as String?;
    _additionalDocuments = snapshotData['additionalDocuments'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('anonymous_report');

  static Stream<AnonymousReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnonymousReportRecord.fromSnapshot(s));

  static Future<AnonymousReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnonymousReportRecord.fromSnapshot(s));

  static AnonymousReportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnonymousReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnonymousReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnonymousReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnonymousReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnonymousReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnonymousReportRecordData({
  String? reportId,
  String? typeOfCrime,
  DateTime? date,
  LatLng? location,
  String? briefDescription,
  String? suspectDetails,
  String? emergencyLevel,
  bool? needForImmediateResponse,
  String? witnessInformation,
  String? additionalDocuments,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reportId': reportId,
      'typeOfCrime': typeOfCrime,
      'date': date,
      'location': location,
      'briefDescription': briefDescription,
      'suspectDetails': suspectDetails,
      'emergencyLevel': emergencyLevel,
      'needForImmediateResponse': needForImmediateResponse,
      'witnessInformation': witnessInformation,
      'additionalDocuments': additionalDocuments,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnonymousReportRecordDocumentEquality
    implements Equality<AnonymousReportRecord> {
  const AnonymousReportRecordDocumentEquality();

  @override
  bool equals(AnonymousReportRecord? e1, AnonymousReportRecord? e2) {
    const listEquality = ListEquality();
    return e1?.reportId == e2?.reportId &&
        e1?.typeOfCrime == e2?.typeOfCrime &&
        e1?.date == e2?.date &&
        e1?.location == e2?.location &&
        e1?.briefDescription == e2?.briefDescription &&
        e1?.suspectDetails == e2?.suspectDetails &&
        e1?.emergencyLevel == e2?.emergencyLevel &&
        e1?.needForImmediateResponse == e2?.needForImmediateResponse &&
        listEquality.equals(e1?.photosOrVideos, e2?.photosOrVideos) &&
        e1?.witnessInformation == e2?.witnessInformation &&
        e1?.additionalDocuments == e2?.additionalDocuments;
  }

  @override
  int hash(AnonymousReportRecord? e) => const ListEquality().hash([
        e?.reportId,
        e?.typeOfCrime,
        e?.date,
        e?.location,
        e?.briefDescription,
        e?.suspectDetails,
        e?.emergencyLevel,
        e?.needForImmediateResponse,
        e?.photosOrVideos,
        e?.witnessInformation,
        e?.additionalDocuments
      ]);

  @override
  bool isValidKey(Object? o) => o is AnonymousReportRecord;
}

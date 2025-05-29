import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CrimeReportRecord extends FirestoreRecord {
  CrimeReportRecord._(
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

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

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
    _userID = snapshotData['userID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Crime_report');

  static Stream<CrimeReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CrimeReportRecord.fromSnapshot(s));

  static Future<CrimeReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CrimeReportRecord.fromSnapshot(s));

  static CrimeReportRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CrimeReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CrimeReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CrimeReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CrimeReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CrimeReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCrimeReportRecordData({
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
  String? userID,
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
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class CrimeReportRecordDocumentEquality implements Equality<CrimeReportRecord> {
  const CrimeReportRecordDocumentEquality();

  @override
  bool equals(CrimeReportRecord? e1, CrimeReportRecord? e2) {
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
        e1?.additionalDocuments == e2?.additionalDocuments &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(CrimeReportRecord? e) => const ListEquality().hash([
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
        e?.additionalDocuments,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is CrimeReportRecord;
}

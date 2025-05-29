import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmergencyContactRecord extends FirestoreRecord {
  EmergencyContactRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "relationship" field.
  String? _relationship;
  String get relationship => _relationship ?? '';
  bool hasRelationship() => _relationship != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _fullName = snapshotData['full_name'] as String?;
    _relationship = snapshotData['relationship'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emergencyContact');

  static Stream<EmergencyContactRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmergencyContactRecord.fromSnapshot(s));

  static Future<EmergencyContactRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EmergencyContactRecord.fromSnapshot(s));

  static EmergencyContactRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmergencyContactRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmergencyContactRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmergencyContactRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmergencyContactRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmergencyContactRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmergencyContactRecordData({
  String? email,
  String? phoneNumber,
  String? fullName,
  String? relationship,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'phone_number': phoneNumber,
      'full_name': fullName,
      'relationship': relationship,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmergencyContactRecordDocumentEquality
    implements Equality<EmergencyContactRecord> {
  const EmergencyContactRecordDocumentEquality();

  @override
  bool equals(EmergencyContactRecord? e1, EmergencyContactRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.fullName == e2?.fullName &&
        e1?.relationship == e2?.relationship;
  }

  @override
  int hash(EmergencyContactRecord? e) => const ListEquality()
      .hash([e?.email, e?.phoneNumber, e?.fullName, e?.relationship]);

  @override
  bool isValidKey(Object? o) => o is EmergencyContactRecord;
}

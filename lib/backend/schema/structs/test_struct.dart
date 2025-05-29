// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TestStruct extends FFFirebaseStruct {
  TestStruct({
    String? crimeCategories,
    int? crimeCounts,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _crimeCategories = crimeCategories,
        _crimeCounts = crimeCounts,
        super(firestoreUtilData);

  // "crimeCategories" field.
  String? _crimeCategories;
  String get crimeCategories => _crimeCategories ?? '';
  set crimeCategories(String? val) => _crimeCategories = val;

  bool hasCrimeCategories() => _crimeCategories != null;

  // "crimeCounts" field.
  int? _crimeCounts;
  int get crimeCounts => _crimeCounts ?? 0;
  set crimeCounts(int? val) => _crimeCounts = val;

  void incrementCrimeCounts(int amount) => crimeCounts = crimeCounts + amount;

  bool hasCrimeCounts() => _crimeCounts != null;

  static TestStruct fromMap(Map<String, dynamic> data) => TestStruct(
        crimeCategories: data['crimeCategories'] as String?,
        crimeCounts: castToType<int>(data['crimeCounts']),
      );

  static TestStruct? maybeFromMap(dynamic data) =>
      data is Map ? TestStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'crimeCategories': _crimeCategories,
        'crimeCounts': _crimeCounts,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'crimeCategories': serializeParam(
          _crimeCategories,
          ParamType.String,
        ),
        'crimeCounts': serializeParam(
          _crimeCounts,
          ParamType.int,
        ),
      }.withoutNulls;

  static TestStruct fromSerializableMap(Map<String, dynamic> data) =>
      TestStruct(
        crimeCategories: deserializeParam(
          data['crimeCategories'],
          ParamType.String,
          false,
        ),
        crimeCounts: deserializeParam(
          data['crimeCounts'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TestStruct &&
        crimeCategories == other.crimeCategories &&
        crimeCounts == other.crimeCounts;
  }

  @override
  int get hashCode => const ListEquality().hash([crimeCategories, crimeCounts]);
}

TestStruct createTestStruct({
  String? crimeCategories,
  int? crimeCounts,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TestStruct(
      crimeCategories: crimeCategories,
      crimeCounts: crimeCounts,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TestStruct? updateTestStruct(
  TestStruct? test, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    test
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTestStructData(
  Map<String, dynamic> firestoreData,
  TestStruct? test,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (test == null) {
    return;
  }
  if (test.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && test.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final testData = getTestFirestoreData(test, forFieldValue);
  final nestedData = testData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = test.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTestFirestoreData(
  TestStruct? test, [
  bool forFieldValue = false,
]) {
  if (test == null) {
    return {};
  }
  final firestoreData = mapToFirestore(test.toMap());

  // Add any Firestore field values
  test.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTestListFirestoreData(
  List<TestStruct>? tests,
) =>
    tests?.map((e) => getTestFirestoreData(e, true)).toList() ?? [];

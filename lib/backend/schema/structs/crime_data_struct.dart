// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CrimeDataStruct extends FFFirebaseStruct {
  CrimeDataStruct({
    String? category,
    String? locationType,
    LocationStruct? location,
    String? context,
    String? outcomeStatus,
    String? persistentId,
    int? id,
    String? locationSubtype,
    String? month,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _category = category,
        _locationType = locationType,
        _location = location,
        _context = context,
        _outcomeStatus = outcomeStatus,
        _persistentId = persistentId,
        _id = id,
        _locationSubtype = locationSubtype,
        _month = month,
        super(firestoreUtilData);

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "location_type" field.
  String? _locationType;
  String get locationType => _locationType ?? '';
  set locationType(String? val) => _locationType = val;

  bool hasLocationType() => _locationType != null;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  set location(LocationStruct? val) => _location = val;

  void updateLocation(Function(LocationStruct) updateFn) {
    updateFn(_location ??= LocationStruct());
  }

  bool hasLocation() => _location != null;

  // "context" field.
  String? _context;
  String get context => _context ?? '';
  set context(String? val) => _context = val;

  bool hasContext() => _context != null;

  // "outcome_status" field.
  String? _outcomeStatus;
  String get outcomeStatus => _outcomeStatus ?? '';
  set outcomeStatus(String? val) => _outcomeStatus = val;

  bool hasOutcomeStatus() => _outcomeStatus != null;

  // "persistent_id" field.
  String? _persistentId;
  String get persistentId => _persistentId ?? '';
  set persistentId(String? val) => _persistentId = val;

  bool hasPersistentId() => _persistentId != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "location_subtype" field.
  String? _locationSubtype;
  String get locationSubtype => _locationSubtype ?? '';
  set locationSubtype(String? val) => _locationSubtype = val;

  bool hasLocationSubtype() => _locationSubtype != null;

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  set month(String? val) => _month = val;

  bool hasMonth() => _month != null;

  static CrimeDataStruct fromMap(Map<String, dynamic> data) => CrimeDataStruct(
        category: data['category'] as String?,
        locationType: data['location_type'] as String?,
        location: data['location'] is LocationStruct
            ? data['location']
            : LocationStruct.maybeFromMap(data['location']),
        context: data['context'] as String?,
        outcomeStatus: data['outcome_status'] as String?,
        persistentId: data['persistent_id'] as String?,
        id: castToType<int>(data['id']),
        locationSubtype: data['location_subtype'] as String?,
        month: data['month'] as String?,
      );

  static CrimeDataStruct? maybeFromMap(dynamic data) => data is Map
      ? CrimeDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category': _category,
        'location_type': _locationType,
        'location': _location?.toMap(),
        'context': _context,
        'outcome_status': _outcomeStatus,
        'persistent_id': _persistentId,
        'id': _id,
        'location_subtype': _locationSubtype,
        'month': _month,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'location_type': serializeParam(
          _locationType,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.DataStruct,
        ),
        'context': serializeParam(
          _context,
          ParamType.String,
        ),
        'outcome_status': serializeParam(
          _outcomeStatus,
          ParamType.String,
        ),
        'persistent_id': serializeParam(
          _persistentId,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'location_subtype': serializeParam(
          _locationSubtype,
          ParamType.String,
        ),
        'month': serializeParam(
          _month,
          ParamType.String,
        ),
      }.withoutNulls;

  static CrimeDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CrimeDataStruct(
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        locationType: deserializeParam(
          data['location_type'],
          ParamType.String,
          false,
        ),
        location: deserializeStructParam(
          data['location'],
          ParamType.DataStruct,
          false,
          structBuilder: LocationStruct.fromSerializableMap,
        ),
        context: deserializeParam(
          data['context'],
          ParamType.String,
          false,
        ),
        outcomeStatus: deserializeParam(
          data['outcome_status'],
          ParamType.String,
          false,
        ),
        persistentId: deserializeParam(
          data['persistent_id'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        locationSubtype: deserializeParam(
          data['location_subtype'],
          ParamType.String,
          false,
        ),
        month: deserializeParam(
          data['month'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CrimeDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CrimeDataStruct &&
        category == other.category &&
        locationType == other.locationType &&
        location == other.location &&
        context == other.context &&
        outcomeStatus == other.outcomeStatus &&
        persistentId == other.persistentId &&
        id == other.id &&
        locationSubtype == other.locationSubtype &&
        month == other.month;
  }

  @override
  int get hashCode => const ListEquality().hash([
        category,
        locationType,
        location,
        context,
        outcomeStatus,
        persistentId,
        id,
        locationSubtype,
        month
      ]);
}

CrimeDataStruct createCrimeDataStruct({
  String? category,
  String? locationType,
  LocationStruct? location,
  String? context,
  String? outcomeStatus,
  String? persistentId,
  int? id,
  String? locationSubtype,
  String? month,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CrimeDataStruct(
      category: category,
      locationType: locationType,
      location: location ?? (clearUnsetFields ? LocationStruct() : null),
      context: context,
      outcomeStatus: outcomeStatus,
      persistentId: persistentId,
      id: id,
      locationSubtype: locationSubtype,
      month: month,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CrimeDataStruct? updateCrimeDataStruct(
  CrimeDataStruct? crimeData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    crimeData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCrimeDataStructData(
  Map<String, dynamic> firestoreData,
  CrimeDataStruct? crimeData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (crimeData == null) {
    return;
  }
  if (crimeData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && crimeData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final crimeDataData = getCrimeDataFirestoreData(crimeData, forFieldValue);
  final nestedData = crimeDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = crimeData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCrimeDataFirestoreData(
  CrimeDataStruct? crimeData, [
  bool forFieldValue = false,
]) {
  if (crimeData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(crimeData.toMap());

  // Handle nested data for "location" field.
  addLocationStructData(
    firestoreData,
    crimeData.hasLocation() ? crimeData.location : null,
    'location',
    forFieldValue,
  );

  // Add any Firestore field values
  crimeData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCrimeDataListFirestoreData(
  List<CrimeDataStruct>? crimeDatas,
) =>
    crimeDatas?.map((e) => getCrimeDataFirestoreData(e, true)).toList() ?? [];

// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CrimeCountsStruct extends FFFirebaseStruct {
  CrimeCountsStruct({
    int? antiSocialBehaviour,
    int? burglary,
    int? drugs,
    int? vehicleCrime,
    int? violentCrime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _antiSocialBehaviour = antiSocialBehaviour,
        _burglary = burglary,
        _drugs = drugs,
        _vehicleCrime = vehicleCrime,
        _violentCrime = violentCrime,
        super(firestoreUtilData);

  // "anti-social-behaviour" field.
  int? _antiSocialBehaviour;
  int get antiSocialBehaviour => _antiSocialBehaviour ?? 0;
  set antiSocialBehaviour(int? val) => _antiSocialBehaviour = val;

  void incrementAntiSocialBehaviour(int amount) =>
      antiSocialBehaviour = antiSocialBehaviour + amount;

  bool hasAntiSocialBehaviour() => _antiSocialBehaviour != null;

  // "burglary" field.
  int? _burglary;
  int get burglary => _burglary ?? 0;
  set burglary(int? val) => _burglary = val;

  void incrementBurglary(int amount) => burglary = burglary + amount;

  bool hasBurglary() => _burglary != null;

  // "drugs" field.
  int? _drugs;
  int get drugs => _drugs ?? 0;
  set drugs(int? val) => _drugs = val;

  void incrementDrugs(int amount) => drugs = drugs + amount;

  bool hasDrugs() => _drugs != null;

  // "vehicle-crime" field.
  int? _vehicleCrime;
  int get vehicleCrime => _vehicleCrime ?? 0;
  set vehicleCrime(int? val) => _vehicleCrime = val;

  void incrementVehicleCrime(int amount) =>
      vehicleCrime = vehicleCrime + amount;

  bool hasVehicleCrime() => _vehicleCrime != null;

  // "violent-crime" field.
  int? _violentCrime;
  int get violentCrime => _violentCrime ?? 0;
  set violentCrime(int? val) => _violentCrime = val;

  void incrementViolentCrime(int amount) =>
      violentCrime = violentCrime + amount;

  bool hasViolentCrime() => _violentCrime != null;

  static CrimeCountsStruct fromMap(Map<String, dynamic> data) =>
      CrimeCountsStruct(
        antiSocialBehaviour: castToType<int>(data['anti-social-behaviour']),
        burglary: castToType<int>(data['burglary']),
        drugs: castToType<int>(data['drugs']),
        vehicleCrime: castToType<int>(data['vehicle-crime']),
        violentCrime: castToType<int>(data['violent-crime']),
      );

  static CrimeCountsStruct? maybeFromMap(dynamic data) => data is Map
      ? CrimeCountsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'anti-social-behaviour': _antiSocialBehaviour,
        'burglary': _burglary,
        'drugs': _drugs,
        'vehicle-crime': _vehicleCrime,
        'violent-crime': _violentCrime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'anti-social-behaviour': serializeParam(
          _antiSocialBehaviour,
          ParamType.int,
        ),
        'burglary': serializeParam(
          _burglary,
          ParamType.int,
        ),
        'drugs': serializeParam(
          _drugs,
          ParamType.int,
        ),
        'vehicle-crime': serializeParam(
          _vehicleCrime,
          ParamType.int,
        ),
        'violent-crime': serializeParam(
          _violentCrime,
          ParamType.int,
        ),
      }.withoutNulls;

  static CrimeCountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CrimeCountsStruct(
        antiSocialBehaviour: deserializeParam(
          data['anti-social-behaviour'],
          ParamType.int,
          false,
        ),
        burglary: deserializeParam(
          data['burglary'],
          ParamType.int,
          false,
        ),
        drugs: deserializeParam(
          data['drugs'],
          ParamType.int,
          false,
        ),
        vehicleCrime: deserializeParam(
          data['vehicle-crime'],
          ParamType.int,
          false,
        ),
        violentCrime: deserializeParam(
          data['violent-crime'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CrimeCountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CrimeCountsStruct &&
        antiSocialBehaviour == other.antiSocialBehaviour &&
        burglary == other.burglary &&
        drugs == other.drugs &&
        vehicleCrime == other.vehicleCrime &&
        violentCrime == other.violentCrime;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([antiSocialBehaviour, burglary, drugs, vehicleCrime, violentCrime]);
}

CrimeCountsStruct createCrimeCountsStruct({
  int? antiSocialBehaviour,
  int? burglary,
  int? drugs,
  int? vehicleCrime,
  int? violentCrime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CrimeCountsStruct(
      antiSocialBehaviour: antiSocialBehaviour,
      burglary: burglary,
      drugs: drugs,
      vehicleCrime: vehicleCrime,
      violentCrime: violentCrime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CrimeCountsStruct? updateCrimeCountsStruct(
  CrimeCountsStruct? crimeCounts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    crimeCounts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCrimeCountsStructData(
  Map<String, dynamic> firestoreData,
  CrimeCountsStruct? crimeCounts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (crimeCounts == null) {
    return;
  }
  if (crimeCounts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && crimeCounts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final crimeCountsData =
      getCrimeCountsFirestoreData(crimeCounts, forFieldValue);
  final nestedData =
      crimeCountsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = crimeCounts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCrimeCountsFirestoreData(
  CrimeCountsStruct? crimeCounts, [
  bool forFieldValue = false,
]) {
  if (crimeCounts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(crimeCounts.toMap());

  // Add any Firestore field values
  crimeCounts.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCrimeCountsListFirestoreData(
  List<CrimeCountsStruct>? crimeCountss,
) =>
    crimeCountss?.map((e) => getCrimeCountsFirestoreData(e, true)).toList() ??
    [];

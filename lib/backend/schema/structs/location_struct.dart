// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationStruct extends FFFirebaseStruct {
  LocationStruct({
    LatLng? latitude,
    StreetStruct? street,
    LatLng? longitude,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _latitude = latitude,
        _street = street,
        _longitude = longitude,
        super(firestoreUtilData);

  // "latitude" field.
  LatLng? _latitude;
  LatLng? get latitude => _latitude;
  set latitude(LatLng? val) => _latitude = val;

  bool hasLatitude() => _latitude != null;

  // "street" field.
  StreetStruct? _street;
  StreetStruct get street => _street ?? StreetStruct();
  set street(StreetStruct? val) => _street = val;

  void updateStreet(Function(StreetStruct) updateFn) {
    updateFn(_street ??= StreetStruct());
  }

  bool hasStreet() => _street != null;

  // "longitude" field.
  LatLng? _longitude;
  LatLng? get longitude => _longitude;
  set longitude(LatLng? val) => _longitude = val;

  bool hasLongitude() => _longitude != null;

  static LocationStruct fromMap(Map<String, dynamic> data) => LocationStruct(
        latitude: data['latitude'] as LatLng?,
        street: data['street'] is StreetStruct
            ? data['street']
            : StreetStruct.maybeFromMap(data['street']),
        longitude: data['longitude'] as LatLng?,
      );

  static LocationStruct? maybeFromMap(dynamic data) =>
      data is Map ? LocationStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'latitude': _latitude,
        'street': _street?.toMap(),
        'longitude': _longitude,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latitude': serializeParam(
          _latitude,
          ParamType.LatLng,
        ),
        'street': serializeParam(
          _street,
          ParamType.DataStruct,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static LocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      LocationStruct(
        latitude: deserializeParam(
          data['latitude'],
          ParamType.LatLng,
          false,
        ),
        street: deserializeStructParam(
          data['street'],
          ParamType.DataStruct,
          false,
          structBuilder: StreetStruct.fromSerializableMap,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'LocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LocationStruct &&
        latitude == other.latitude &&
        street == other.street &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => const ListEquality().hash([latitude, street, longitude]);
}

LocationStruct createLocationStruct({
  LatLng? latitude,
  StreetStruct? street,
  LatLng? longitude,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LocationStruct(
      latitude: latitude,
      street: street ?? (clearUnsetFields ? StreetStruct() : null),
      longitude: longitude,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LocationStruct? updateLocationStruct(
  LocationStruct? location, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    location
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLocationStructData(
  Map<String, dynamic> firestoreData,
  LocationStruct? location,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (location == null) {
    return;
  }
  if (location.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && location.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final locationData = getLocationFirestoreData(location, forFieldValue);
  final nestedData = locationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = location.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLocationFirestoreData(
  LocationStruct? location, [
  bool forFieldValue = false,
]) {
  if (location == null) {
    return {};
  }
  final firestoreData = mapToFirestore(location.toMap());

  // Handle nested data for "street" field.
  addStreetStructData(
    firestoreData,
    location.hasStreet() ? location.street : null,
    'street',
    forFieldValue,
  );

  // Add any Firestore field values
  location.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLocationListFirestoreData(
  List<LocationStruct>? locations,
) =>
    locations?.map((e) => getLocationFirestoreData(e, true)).toList() ?? [];

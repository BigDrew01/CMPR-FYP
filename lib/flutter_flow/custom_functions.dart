import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<LatLng>? listDoubletoLatLng(
  List<String>? longitude,
  List<String>? latitude,
) {
  // return longitude and latitude combine as LatLng
  if (longitude == null ||
      latitude == null ||
      longitude.length != latitude.length) {
    return null;
  }

  List<LatLng> latLngList = [];
  for (int i = 0; i < longitude.length; i++) {
    double lat = double.tryParse(latitude[i]) ?? 0.0;
    double lng = double.tryParse(longitude[i]) ?? 0.0;
    latLngList.add(LatLng(lat, lng));
  }
  return latLngList;
}

int? indexMarkerIdentifier(
  LatLng? centerMarkerCoordinate,
  List<LatLng>? listofLocation,
) {
  // return index of arguments 1 in arguments 2
  if (centerMarkerCoordinate == null || listofLocation == null) {
    return null; // Return null if inputs are invalid
  }
  for (int i = 0; i < listofLocation.length; i++) {
    if (centerMarkerCoordinate == listofLocation[i]) {
      return i;
    }
  }
  return null;
}

LatLng? double2LatLng(
  double? latitude,
  double? longitude,
) {
  // return latitude and longitude combined as LatLng
  if (latitude != null && longitude != null) {
    return LatLng(latitude, longitude);
  }
  return null;
}

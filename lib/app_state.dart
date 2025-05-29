import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _bottomsheet = true;
  bool get bottomsheet => _bottomsheet;
  set bottomsheet(bool value) {
    _bottomsheet = value;
  }

  bool _listView = true;
  bool get listView => _listView;
  set listView(bool value) {
    _listView = value;
  }
}

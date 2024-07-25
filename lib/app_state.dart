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

  String _xapikey = 'blip-api';
  String get xapikey => _xapikey;
  set xapikey(String value) {
    _xapikey = value;
  }

  bool _firstLogin = true;
  bool get firstLogin => _firstLogin;
  set firstLogin(bool value) {
    _firstLogin = value;
  }
}

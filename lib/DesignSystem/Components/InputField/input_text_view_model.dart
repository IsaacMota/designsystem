import 'package:flutter/material.dart';

class InputTextViewModel extends ChangeNotifier {
  bool _isEnabled = true;
  bool _isError = false;

  bool get isEnabled => _isEnabled;
  bool get isError => _isError;

  void setEnabled(bool value) {
    _isEnabled = value;
    notifyListeners();
  }

  void setError(bool value) {
    _isError = value;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  bool _busy = false;

  bool get busy => _busy;

  set busy(bool value) {
    _busy = value;
    notifyListeners();
  }

  void onInit(BuildContext? context) {}

  void onDispose() {
    dispose();
  }

  void onUpdate() {
    notifyListeners();
  }
}

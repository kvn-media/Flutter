import 'package:flutter/material.dart';

class LampViewModel with ChangeNotifier {
  bool isLampOn = false;

  switchLamp() {
    isLampOn = !isLampOn;
    notifyListeners();
  }
}
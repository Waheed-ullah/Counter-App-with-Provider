import 'package:flutter/widgets.dart';

class CountChanger with ChangeNotifier {
  int _digits = 0;
  int get digits => _digits;
  void increament_digit() {
    _digits++;
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';

class ButtonBloc extends ChangeNotifier {
  String _ansVal = "0";
  String get ansVal => _ansVal;

  set ansVal(String val) {
    _ansVal = val;
    notifyListeners();
  }
}

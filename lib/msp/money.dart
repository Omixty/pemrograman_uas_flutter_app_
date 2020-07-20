import 'package:flutter/foundation.dart';

class Money with ChangeNotifier{
  int _saldo = 10000;

  int get saldo => _saldo;
  set saldo(int value) {
    _saldo = value;
    notifyListeners();
  }
}
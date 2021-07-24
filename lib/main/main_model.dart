import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = 'Test';

  void changeKboyText() {
    kboyText = 'テスト';
    notifyListeners();
  }
}

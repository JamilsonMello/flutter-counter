import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  bool changedTheme = false;

  static AppController instance = AppController();

  void changeTheme() {
    changedTheme = !changedTheme;

    notifyListeners();
  }
}

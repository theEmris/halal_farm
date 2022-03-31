import 'package:flutter/material.dart';


class TextProvider extends ChangeNotifier {
   Color myColor = Colors.amber;

   changeMode() {
    myColor = Colors.black;
    notifyListeners();
  }
}

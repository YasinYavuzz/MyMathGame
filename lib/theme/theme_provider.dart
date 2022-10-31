import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{
  bool isDark = true;

  changeTheme(bool value){
    isDark = value;
    notifyListeners();
  }
}
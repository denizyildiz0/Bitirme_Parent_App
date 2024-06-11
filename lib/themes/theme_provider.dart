import 'package:bitirme_parent_app/themes/light_mode.dart';
import 'package:flutter/material.dart';


import 'dark_mode.dart';

class ThemeProvider extends ChangeNotifier {
  //initally, light mode
  ThemeData _themeData = lightMode;

  //get theme
  ThemeData get themeData => _themeData;

  //is dark mode
  bool get isDarkMode => _themeData == darkMode;

  //set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    //update UI
    notifyListeners();
  }

  //toggle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:samachar/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppStateNotifier extends ChangeNotifier{

  bool _isDarkModeOn = true;

  void updateTheme() async {
    _isDarkModeOn =!_isDarkModeOn;
    notifyListeners(); 
  }

  bool get isDarkModeOn => _isDarkModeOn;
}
import 'package:flutter/material.dart';

class AppNotifier extends ChangeNotifier{

  // -- PASSWORD TOGGLE
  bool _obscureText = false;
  bool get obscureText => _obscureText;
  

  void passwordToggle(){
    _obscureText != _obscureText;
    notifyListeners();
  }

}
// import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:shopease/constants/colours.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  IconData? prefixIcon;
  TextEditingController? controller;

  CustomTextField({
    this.hintText,
    this.prefixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          hintText: hintText,
          prefixIcon: Icon(prefixIcon),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: AppColours.primaryColour,
          ))),
    );
  }
}

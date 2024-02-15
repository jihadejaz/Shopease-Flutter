// import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:shopease/constants/colours.dart';

class PasswordField extends StatelessWidget {
  String? hintText;
  IconData? prefixIcon;
  TextEditingController? controller;
  bool obscureText;

  VoidCallback onToggle;

  PasswordField({
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.obscureText = true,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          hintText: hintText,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: IconButton(
              onPressed: onToggle,
              icon: Icon(obscureText
                  ? FluentIcons.eye_12_filled
                  : FluentIcons.eye_off_20_filled)),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: AppColours.primaryColour,
          ))),
    );
  }
}

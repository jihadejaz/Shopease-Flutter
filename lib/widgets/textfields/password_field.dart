import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:shopease/constants/colors.dart';

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
    required this.onToggle
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          hintText:  hintText,
          prefixIcon: Icon(  prefixIcon  ),


          suffixIcon: IconButton(
            onPressed:() {
              onToggle;
            },
            icon: Icon(  obscureText?  FluentIcons.eye_16_regular  : FluentIcons.eye_off_16_regular   ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          iconColor: Colors.grey,


          focusColor: AppColors.primaryColor,
          

          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor)
          )
        ),
    );
  }
}
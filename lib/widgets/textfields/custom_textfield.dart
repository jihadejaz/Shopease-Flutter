import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:shopease/constants/colors.dart';

class CustomTextField extends StatelessWidget {

  String? hintText;
  IconData? prefixIcon;
  TextEditingController? controller; 



  CustomTextField({
    this.hintText,
    this.prefixIcon,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      decoration: InputDecoration(
          hintText:  hintText,
          prefixIcon: Icon(  prefixIcon  ),
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
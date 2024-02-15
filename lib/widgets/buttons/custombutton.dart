import 'package:flutter/material.dart';
import 'package:shopease/constants/colours.dart';
import 'package:shopease/pages/Auth/signup.dart';
import 'package:shopease/utils/app_utils.dart';

class CustomButton extends StatelessWidget {
  String title;
  VoidCallback onTap;
  bool isLoading;

  CustomButton({
    required this.title,
    required this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getScreenHeight(context) * 0.1,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColours.primaryColour,
          foregroundColor: AppColours.textColours,
        ),
        child: isLoading ? CircularProgressIndicator() : Text(title),
      ),
    );
  }
}

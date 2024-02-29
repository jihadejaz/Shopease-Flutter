import 'package:flutter/material.dart';
import 'package:shopease/constants/colors.dart';
import 'package:shopease/utils/app_utils.dart';

class CustomButton extends StatelessWidget {

  String title;
  VoidCallback onTap;
  bool isLoading;


  CustomButton({
    required this.title,
    required this.onTap,
    this.isLoading = false
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              width: double.infinity,
              height: getScreenHeight(context) * 0.08 ,
              child: ElevatedButton(

                onPressed: onTap,

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor
                ),
      
                child: isLoading? CircularProgressIndicator(color: Colors.white,) :  Text(title),
              ),
            ) ;
  }
}
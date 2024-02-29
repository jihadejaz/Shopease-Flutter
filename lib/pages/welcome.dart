import 'package:flutter/material.dart';
import 'package:shopease/constants/colors.dart';
import 'package:shopease/constants/images.dart';
import 'package:shopease/pages/auth/login.dart';
import 'package:shopease/pages/auth/signup.dart';
import 'package:shopease/utils/app_utils.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 16, vertical: 16 ),
        child: Column(
          children: [
      
            // -- ILLUSTRATION
            Image.asset(
              AppImages.welcome,
              width: getScreenWidth(context) * 0.8,
            ),
      
      
      
      
            // -- HEADING
            Text(
              "Welcome to ShopEase",
              style: TextStyle(
                fontSize: getScreenWidth(context) *0.08,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
      
              ),
            ),
      
      
      
            // -- DESCRIPTION
            Text(
              "The place you are seeking for all your stuff",
              style: TextStyle(
                fontSize: getScreenWidth(context) * 0.04,
                color: Colors.grey,
              ),
            ),



            Spacer(),
      
      
            // -- BUTTON for get stareted
            SizedBox(
              width: double.infinity,
              height: getScreenHeight(context) * 0.08 ,
              child: ElevatedButton(
                onPressed: () {
                  gotoPage(  SignUpPage() , context);
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryColor
                ),
      
                child: Text("Get started"),
              ),
            ),


            SizedBox(height: 10,),



            // already have an account button
            SizedBox(
              width: double.infinity,
              height: getScreenHeight(context) * 0.08 ,
              child: OutlinedButton(
                onPressed: () {
                  gotoPage( LoginPage() , context);
                },

                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: AppColors.primaryColor
                  )
                ),
      
                child: Text("Already have an account", style: TextStyle(color: AppColors.primaryColor),),
              ),
            ),




      
      
      
      
      
      
          ],
        ),
      )
    );
  }
}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopease/constants/colors.dart';
import 'package:shopease/constants/images.dart';
import 'package:shopease/pages/welcome.dart';
import 'package:shopease/utils/app_utils.dart';
            
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  void initState() {
    super.initState();

    Timer( Duration(seconds: 3)  , () {  gotoPageAndRemove( WelcomePage()  , context);  });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [

          // -- APP LOGO
          Center(
            child: Image.asset(
              AppImages.appLogo,
              width: getScreenWidth(context) *0.5 ,
            ),
          ),



          // -- LOADING INDICATOR
          CircularProgressIndicator(
            color: AppColors.secondaryColor,
            strokeWidth: 5,
          )


        ],
      ),
    );
  }
}
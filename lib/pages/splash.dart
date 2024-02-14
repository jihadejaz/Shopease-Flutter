import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shopease/constants/colours.dart';
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

    Timer(Duration(seconds: 1), () {
      goToPageAndRemoveAll(WelcomePage(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // APP LOGO
          Center(
            child: Image.asset(
              AppImages.appLogo,
              width: getScreenWidth(context) * 0.5,
              height: getScreenHeight(context) * 0.5,
            ),
          ),

          // APP LOADING

          CircularProgressIndicator(
            color: AppColours.secondaryColour,
          )
        ],
      ),
    );
  }
}

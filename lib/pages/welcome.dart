import 'package:flutter/material.dart';
import 'package:shopease/constants/colours.dart';
import 'package:shopease/constants/images.dart';
import 'package:shopease/pages/Auth/login.dart';
import 'package:shopease/pages/Auth/signup.dart';
import 'package:shopease/utils/app_utils.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          // ILLUSTRATION
          Image.asset(
            AppImages.welcomePic,
            width: getScreenWidth(context) * 0.8,
          ),
          // HEADING

          Text(
            "Welcome to Shopease",
            style: TextStyle(
                fontSize: getScreenWidth(context) * 0.08,
                color: AppColours.primaryColour,
                fontWeight: FontWeight.w100),
          ),
          SizedBox(
            height: 10,
          ),
          // DESCRIPTION
          Text(
            "The place you are seeking",
            style: TextStyle(
                fontSize: getScreenWidth(context) * 0.04,
                color: AppColours.secondaryColour,
                fontWeight: FontWeight.bold),
          ),
          // BUTTON
          Spacer(),
          SizedBox(
            width: double.infinity,
            height: getScreenHeight(context) * 0.1,
            child: ElevatedButton(
                onPressed: () {
                  goToPage(LoginPage(), context);
                },
                style: OutlinedButton.styleFrom(
                    side: BorderSide(
                  color: AppColours.textColours,
                )),
                child: Text(
                  'Already have an Account',
                  style: TextStyle(
                    fontSize: getScreenWidth(context) * 0.05,
                  ),
                )),
          )
        ],
      ),
    ));
  }
}

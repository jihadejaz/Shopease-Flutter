import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopease/constants/colours.dart';
import 'package:shopease/constants/images.dart';
import 'package:shopease/utils/app_utils.dart';
import 'package:shopease/widgets/buttons/custombutton.dart';
import 'package:shopease/widgets/textfields/customtextfield.dart';
import 'package:shopease/widgets/textfields/passwordfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

// TEXT EDITING CONTROLLERS
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // APP LOGO

            Image.asset(
              AppImages.appLogo,
              width: getScreenWidth(context) * 0.4,
              height: getScreenHeight(context) * 0.2,
            ),

            // TITLE
            Text(
              "Login Here",
              style: TextStyle(
                color: AppColours.primaryColour,
                fontSize: getScreenWidth(context) * 0.07,
                fontWeight: FontWeight.w100,
              ),
            ),
            // SUB TITLE/ DESCRIPTION
            Text(
              "Welcome Back, Enter your details",
              style: TextStyle(
                fontSize: getScreenWidth(context) * 0.04,
              ),
            ),

            Form(
                child: Column(
              children: [
                // EMAIL FIELD
                CustomTextField(
                  controller: emailContoller,
                  hintText: "Email",
                  prefixIcon: FluentIcons.mail_12_filled,
                ),

                // PASSWORD FIELD
                PasswordField(
                  controller: passwordController,
                  hintText: "Password",
                  prefixIcon: FluentIcons.lock_closed_16_filled,
                  obscureText: false,
                  onToggle: () {},
                ),
              ],
            )),
            // FORGOT PASSWORD

            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: AppColours.primaryColour,
                  ),
                ),
              ),
            ),
            // LOGIN BUTTON

            CustomButton(
              title: "Login",
              onTap: () {},
              isLoading: true,
            ),
            // DIVIDER
            // SOCIAL MEDIA ICONS
            // ALREADY HAVE AN ACCOUNT
          ],
        ),
      ),
    );
  }
}

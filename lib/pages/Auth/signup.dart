import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopease/constants/colors.dart';
import 'package:shopease/constants/images.dart';
import 'package:shopease/utils/app_utils.dart';
import 'package:shopease/widgets/buttons/custom_button.dart';
import 'package:shopease/widgets/textfields/custom_textfield.dart';
import 'package:shopease/widgets/textfields/password_field.dart';

class SignUpPage extends StatelessWidget {
 SignUpPage({super.key});


  // -- TEXT EDITING CONTROLLERS
  TextEditingController firstNameContoller = TextEditingController();
  TextEditingController lastNameContoller = TextEditingController();
  TextEditingController emailContoller = TextEditingController();
  TextEditingController phoneContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();
  TextEditingController confirmPasswordContoller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
      
            // -- APP LOGO
            Image.asset(
              AppImages.appLogo,
              width: getScreenWidth(context) *0.25 ,
              height: getScreenHeight(context) * 0.15,
            ),


            SizedBox(height: getScreenHeight(context) *0.01  ,),
      
      
            // -- TITLE
            Text(
              "Create an account",
              style: TextStyle(
                color: Colors.black,
                fontSize: getScreenWidth(context) *0.065,
                fontWeight: FontWeight.w600
              ),
            ),


            SizedBox(height: getScreenHeight(context) *0.008  ,),
            
      
            // -- SUBTITLE
            Text(
              "Sign up now to get started with an account",
              style: TextStyle(
                color: Colors.grey,
                fontSize: getScreenWidth(context) *0.04,
                fontWeight: FontWeight.w600
              ),
            ),


            SizedBox(height: getScreenHeight(context) *0.03  ,),
      
      
            // -- FORM
            Form(
              child: Column(
      
                children: [
      
                  // -- FIRST NAME FIELD
                  CustomTextField(
                    controller: firstNameContoller,
                    hintText: "First Name",
                    prefixIcon: FluentIcons.person_16_regular,           
                  ),


                  SizedBox(height: getScreenHeight(context) *0.02  ,),


                  // -- LAST NAME FIELD
                  CustomTextField(
                    controller: lastNameContoller,
                    hintText: "Last Name",
                    prefixIcon: FluentIcons.person_16_regular,           
                  ),


                  SizedBox(height: getScreenHeight(context) *0.02  ,),


                  // -- EMAIL FIELD
                  CustomTextField(
                    controller: emailContoller,
                    hintText: "Email",
                    prefixIcon: FluentIcons.mail_16_regular,           
                  ),


                  SizedBox(height: getScreenHeight(context) *0.02  ,),


                  // -- PHONE FIELD
                  CustomTextField(
                    controller: phoneContoller,
                    hintText: "Phone",
                    prefixIcon: FluentIcons.phone_16_regular,           
                  ),


                  SizedBox(height: getScreenHeight(context) *0.02  ,),
      
      
      
                  // -- PASSWORD FIELD
                  PasswordField(
                    controller: passwordContoller,
                    hintText: "Password",
                    prefixIcon: FluentIcons.lock_closed_16_regular,
                    obscureText: true,
                    onToggle: () {
                      
                    },
                  ),




                  SizedBox(height: getScreenHeight(context) *0.02  ,),
      
      
      
                  // -- CONFIRM PASSWORD FIELD
                  PasswordField(
                    controller: confirmPasswordContoller,
                    hintText: "Confirm Password",
                    prefixIcon: FluentIcons.lock_closed_16_regular,
                    obscureText: true,
                    onToggle: () {
                      
                    },
                  )
      
      
                ],
              ),
            ),





            SizedBox(height: getScreenHeight(context) *0.03  ,),
      
      
            // -- REGISTER BUTTON
            CustomButton(
              title: "Create account",
              onTap: () {
                
              },
              isLoading: false,
            ),


            
      
          ],
        ),
      ),





    );
  }
}
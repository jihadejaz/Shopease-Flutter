import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shopease/constants/colors.dart';
import 'package:shopease/constants/images.dart';
import 'package:shopease/pages/auth/signup.dart';
import 'package:shopease/provider/app_provider.dart';
import 'package:shopease/utils/app_utils.dart';
import 'package:shopease/widgets/buttons/custom_button.dart';
import 'package:shopease/widgets/textfields/custom_textfield.dart';
import 'package:shopease/widgets/textfields/password_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});


  // -- TEXT EDITING CONTROLLERS
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();


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
              "Login to your account",
              style: TextStyle(
                color: Colors.black,
                fontSize: getScreenWidth(context) *0.065,
                fontWeight: FontWeight.w600
              ),
            ),


            SizedBox(height: getScreenHeight(context) *0.008  ,),
            
      
            // -- SUBTITLE
            Text(
              "Welcome back please enter your details",
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
      
                  // -- EMAIL FIELD
                  CustomTextField(
                    controller: emailContoller,
                    hintText: "Email",
                    prefixIcon: FluentIcons.mail_16_regular,           
                  ),


                  SizedBox(height: getScreenHeight(context) *0.02  ,),
      
      
      
                  // -- PASSWORD FIELD
                  Consumer<AppNotifier>(

                    builder: (context, value, child) {

                      return PasswordField(
                        controller: passwordContoller,
                        hintText: "Password",
                        prefixIcon: FluentIcons.lock_closed_16_regular,
                        obscureText: value.obscureText,
                        onToggle:(){
                           value.passwordToggle;
                        } ,
                      );
                    },
                  )
      
                ],
              ),
            ),




            SizedBox(height: getScreenHeight(context) *0.02  ,),
      
      
            // -- FORGOT PASSWORD
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  
                },
            
                child: Text("Forgot password?", style: TextStyle(color: AppColors.primaryColor),),
              ),
            ),


            SizedBox(height: getScreenHeight(context) *0.03  ,),
      
      
            // -- SIGN IN BUTTON
            CustomButton(
              title: "Sign in",
              onTap: () {
                
              },
              isLoading: false,
            ),


            SizedBox(height: getScreenHeight(context) *0.04  ,),



      
      
            // -- DIVIDER
            Row(
              children: [

                Flexible(child: Divider( thickness: 1,  color: Colors.grey.shade700,  indent:60, endIndent: 10, )),

                Text("Or continue with"),

                Flexible(child: Divider(thickness: 1,  color: Colors.grey.shade700, endIndent: 60,  indent: 10,))

              ],
            ),

            SizedBox(height: getScreenHeight(context) *0.02  ,),
      
            // -- GOOGLE APPLE BUTTON
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    
                  },

                  icon: Icon( FontAwesomeIcons.google, size: 30, color: AppColors.primaryColor,),
                ),


                SizedBox(width: getScreenWidth(context) *0.05 ,),


                IconButton(
                  onPressed: () {
                    
                  },

                  icon: Icon( FontAwesomeIcons.facebook, size: 30, color: AppColors.primaryColor,),
                ),
              ],
            ),
      

            

            SizedBox(height: getScreenHeight(context) *0.08  ,),
      
            // -- ALREADY HAVE AN ACCOUNT BUTTON
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("dont have an account?"),
                TextButton(
                  onPressed: () {
                    gotoPage( SignUpPage() , context);
                  },

                  child: Text("Signup",style: TextStyle(color: AppColors.primaryColor),),
                )
              ],
            )
      
          ],
        ),
      ),





    );
  }
}
import 'package:flutter/material.dart';

// FOR WIDTH

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
// FOR HEIGHT

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

// FUNCTION TO NAVIGATE TO OTHER SCREEN AND GET BACK

void goToPage(Widget page, BuildContext context){
Navigator.push(context, MaterialPageRoute(builder: (context) => page,));
}


void goToPageAndRemove(Widget page, BuildContext context){
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page,));
}


void goToPageAndRemoveAll(Widget page, BuildContext context){
Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => page,), (route) => false);
}
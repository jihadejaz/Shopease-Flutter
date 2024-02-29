import 'package:flutter/material.dart';


// -- FUNCTION TO GET CURRENT SCREEN WIDTH
double getScreenWidth( BuildContext context ){

  return MediaQuery.of(context).size.width;
}


// -- FUNCTION TO GET CURRENT SCREEN HEIGHT
double getScreenHeight( BuildContext context ){

  return MediaQuery.of(context).size.height;

}




// -- FUNCTION TO NAVIGATE TO ANOTHER SCREEN
void gotoPage( Widget page,  BuildContext context){

  Navigator.push(context,  MaterialPageRoute(builder: (context) => page,) );
}



// -- FUNCTION TO NAVIGATE TO ANOTHER SCREEN AND REMOVE PREVIOUS SCREEN
void gotoPageAndRemove( Widget page,  BuildContext context){

  Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context) => page,) );
}



// -- FUNCTION TO NAVIGATE TO ANOTHER SCREEN AND REMOVE ALL OTHER SCREENS
void gotoPageAndRemoveAll( Widget page,  BuildContext context){
  
  Navigator.pushAndRemoveUntil(context,  MaterialPageRoute(builder: (context) => page,) ,  (route)=>false  );
}
import 'package:flutter/material.dart';
import 'package:shopease/pages/splash.dart';
import 'package:shopease/pages/welcome.dart';

void main() {
  runApp(ShopEase());
}

class ShopEase extends StatelessWidget {
  const ShopEase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        'welcome': (context) => WelcomePage()
      },
    );
  }
}

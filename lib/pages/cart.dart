import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopease/constants/colors.dart';
import 'package:shopease/widgets/cards/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Cart"),
        elevation: 0,
      ),



      // -- body

      body: Padding(
        padding: const EdgeInsets.all(16).r,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return CartItemCard();
          },
        ),
      )



    );
  }
}

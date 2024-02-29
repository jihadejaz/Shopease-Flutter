import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:shopease/constants/colors.dart';
import 'package:shopease/pages/cart.dart';
import 'package:shopease/pages/category.dart';
import 'package:shopease/pages/home.dart';
import 'package:shopease/pages/profile.dart';

class ScreenNavigation extends StatelessWidget {
  const ScreenNavigation({super.key});

  @override
  Widget build(BuildContext context) {

    return PersistentTabView(
      context,

      screens: [
        CartPage(),
        HomePage(),
        CategoryPage(),
        ProfilePage()
      ],


      items: [

        PersistentBottomNavBarItem(
          icon: Icon(FluentIcons.home_16_regular),
          title: "Home",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: Colors.grey
        ),


        PersistentBottomNavBarItem(
          icon: Icon(FluentIcons.collections_16_regular),
          title: "Category",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: Colors.grey
        ),


        PersistentBottomNavBarItem(
          icon: Icon(FluentIcons.cart_16_regular),
          title: "Cart",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: Colors.grey
        ),



        PersistentBottomNavBarItem(
          icon: Icon(FluentIcons.person_16_regular),
          title: "Profile",
          activeColorPrimary: AppColors.primaryColor,
          inactiveColorPrimary: Colors.grey
        ),


      ],



      navBarStyle: NavBarStyle.style6,
      




    );
  }
}
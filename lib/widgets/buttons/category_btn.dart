import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopease/constants/colors.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
              children: [

                // -- card
                SizedBox(
                  height: 70.h,
                  width: 65.w,
                  child: Card(
                    elevation: 0,
                    color: AppColors.primaryColor.withAlpha(50),
                    child: Center(
                      child: Icon(FluentIcons.phone_16_filled, size: 40.sp, color: AppColors.primaryColor, ),
                    ),
                  ),

                ),


                // -- text
                Text("Category", style: TextStyle(color: AppColors.primaryColor, fontSize: 12.sp),)

              ],
            );
  }
}
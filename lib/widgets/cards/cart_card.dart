
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      width: double.infinity,
      
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(6).r,
          child: Row(
            children: [
        
              // --  PICTURE
              Expanded(
                flex: 2,
                child: Card(
                  color: Colors.grey.shade300,
                  child: Image.network("https://png.monster/wp-content/uploads/2023/09/PNG.monsteriphone-15-plus-pro-pro-max-green%20png.png"),
                ),
              ),
        
        
        
        
              // -- OTHER CONTENT
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        
                      // TITLE REMOVE BUTTON
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Product Title", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),),
                        
                        
                          IconButton(
                            onPressed: (){}, 
                            icon: Icon(FluentIcons.delete_16_regular)
                          )
                        
                        ],
                      ),
                        
                        
                        
                        
                      // -- COLOR SIZE
                      Text("Color :BLACK"),
                        
                        
                        
                      // PRICE AND COUNTER
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          Text("\$1200" , style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp, color: AppColors.primaryColor),),
                        
                        
                          Row(
                            
                            children: [
                        
                              IconButton(
                                onPressed: (){}, 
                                icon: Icon(FluentIcons.subtract_square_16_filled, color: AppColors.primaryColor,)
                              ),
                        
                              Text("1",style: TextStyle(fontSize: 18.sp, color: AppColors.primaryColor),),
                        
                              IconButton(
                                onPressed: (){}, 
                                icon: Icon(FluentIcons.add_square_16_filled, color: AppColors.primaryColor,)
                              ),
                        
                            ],
                          )
                        
                        ],
                      )
                        
                        
                        
                    ],
                  ),
                ),
              )
        
              
            ],
          ),
        ),
      ),
    );
  }
}
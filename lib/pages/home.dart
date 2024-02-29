import 'package:card_swiper/card_swiper.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopease/constants/colors.dart';
import 'package:shopease/constants/images.dart';
import 'package:shopease/widgets/buttons/category_btn.dart';
import 'package:shopease/widgets/cards/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          AppImages.appLogo,
          width: 50.w,
          height:50.h,
        ),

        actions: [Icon(FluentIcons.shopping_bag_16_regular, color: Colors.black,)],

      ),



      body: Padding(
        padding: const EdgeInsets.all(16).r,
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              
              // --  SEARCH BAR
              TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                  fillColor: Colors.grey.shade300,
                  filled: true,
              
                  hintText: "Search",
                  prefixIcon: Icon(FluentIcons.search_16_regular)
              
              
                  
                ),
              ),
              
              
              // -- CAROUSEL SLIDER
              SizedBox(
                height: 180,
                width: double.infinity,
        
                child: Swiper(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      color: AppColors.primaryColor,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(AppImages.slider2, fit: BoxFit.fill,),
                      )
                    );
                  },
                ),
              ),
        
        
        
              
              
              // -- CATEGORIES
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All Categories" , style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),),
        
                  TextButton(
                    onPressed: () {
                      
                    },
        
                    child: Text("See more", style: TextStyle(color: AppColors.primaryColor),),
                  )
                ],
              ),
        
              10.verticalSpace,
        
              // -- category cards
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4
                ),
                itemCount: 4,
        
                itemBuilder: (context, index) {
                  return CategoryButton();
                },
              ),
        
             
        
              15.verticalSpace,
              
              
              // -- PRODUCTS
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Products" , style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),),
        
                  TextButton(
                    onPressed: () {
                      
                    },
        
                    child: Text("See more", style: TextStyle(color: AppColors.primaryColor),),
                  )
                ],
              ),
        
        
              // -- products card
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 0.7),
        
                itemCount: 4,
        
                itemBuilder: (context, index) {
                  
                  return ProductCard(
                    imageUrl: "https://png.monster/wp-content/uploads/2023/09/PNG.monsteriphone-15-plus-pro-pro-max-green%20png.png",
                    title: "Iphone 15 pro",
                    price: 1300,
                  );
                },
              )
        
        
        
        
            ],
          ),
        ),
      ),

    );
  }
}
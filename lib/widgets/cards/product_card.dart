import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopease/constants/colors.dart';

class ProductCard extends StatelessWidget {

  String imageUrl;
  String title;
  double price;
  double? rating;



  ProductCard({
    required this.title,
    required this.imageUrl,
    required this.price,
    this.rating = 1.1
  });

  @override
  Widget build(BuildContext context) {
    return Card(
                    color: Colors.white,
                    elevation: 0.5,
                    child: Column(
                      children: [
                        // -- image
                        Expanded(
                          flex: 5,
                          child: SizedBox(
                            
                            height: 80.h,
                            width: double.infinity,
                            child: Card(
                              color: Colors.grey.shade200,
                              child: Image.network(imageUrl),
                            ),
                          ),
                        ),

                        // -- title price
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(title, style: TextStyle(fontSize: 20.sp),),
                          
                          
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    // price
                                    Text("\$${price}" , style: TextStyle(color: AppColors.primaryColor, fontSize: 16.sp),),
                          
                                    
                                    // rating icon
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.amber,),
                                        Text(rating.toString())
                          
                          
                                      ],
                                    )
                          
                                  ],
                                )
                          
                          
                              ],
                            ),
                          )
                        )


                      ],
                    ),
                  );
  }
}
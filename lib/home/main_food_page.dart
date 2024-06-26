import 'package:ecommerceapp/colors.dart';
import 'package:ecommerceapp/home/food_page_body.dart';
import 'package:ecommerceapp/utils/dimensions.dart';
import 'package:ecommerceapp/widgets/big_text.dart';
import 'package:ecommerceapp/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        // showing the header
          Container(
        child: Container(
          margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
          padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(text: 'India',color: AppColors.mainColor,size: 25,),
                  const Row(
                    children: [
                      SmallText(text: 'Delhi-NCR',color: Colors.black54,),
                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: Dimensions.width45,
                  height: Dimensions.height45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                    color: AppColors.mainColor
                  ),
                  // Default size of the icon is 24
                  child: Icon(Icons.search,color: Colors.white,size: Dimensions.iconSize24,),
                ),
              )
            ],
          ),
        ),
      ),
        // Showing the body
        Expanded(
        child: SingleChildScrollView(
          child: FoodPageBody(),
        )
        )
        
        ],
      )
    );

  }
}
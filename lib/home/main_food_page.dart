import 'package:ecommerceapp/colors.dart';
import 'package:ecommerceapp/home/food_page_body.dart';
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
          Container(
        child: Container(
          margin: const EdgeInsets.only(top: 45, bottom: 15),
          padding: const EdgeInsets.only(left: 20,right: 20),
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
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor
                  ),
                  child: const Icon(Icons.search,color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
        const FoodPageBody()
        ],
      )
    );

  }
}
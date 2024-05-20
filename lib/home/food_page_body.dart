import 'package:ecommerceapp/widgets/big_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.redAccent,
      height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [

        // Container with image of Dish
        Container(
        height: 220,
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:
                index.isEven ? const Color(0xFF69c5df) : const Color(0xFF9294cc),
            image: const DecorationImage(
              image: AssetImage('assets/images/food1.jpg'),
              fit: BoxFit.cover
              )
              ),
      ),

      // Container with name of the Dish
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 140,
          margin: const EdgeInsets.only(left: 40, right: 40,bottom: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
                ),
                child: Container(
                  padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                  child: Column(
                    children: [
                      BigText(text: 'Vegetable Salad')
                    ],
                  ),
                ),
        ),
      ),
      ]
    );
  }
}

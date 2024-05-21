import 'package:ecommerceapp/colors.dart';
import 'package:ecommerceapp/widgets/big_text.dart';
import 'package:ecommerceapp/widgets/icon_and_text.dart';
import 'package:ecommerceapp/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double _scaleFactor = 0.8;
  double _height = 220;

// this take the page value of the current page(i.e jab hum right ya left swipe karnege to page values change hoti hai aur index 0 ki page value 0 reheti hai index 1 ki page value 1 reheti). PageController.page is page value milti hai 
  @override
  void initState(){
    super.initState();
    pageController.addListener((){
      setState(() {
        _currPageValue =  pageController.page!;
      });
    
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

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

    Matrix4 matrix = new Matrix4.identity();
    // if wala code current slide ke liye hai jo screen me dikh rhi hai
    if(index == _currPageValue.floor()){
      var currScale = 1 - (_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }
    // else if wala code next upcoming slide(Right side wali slide) ke liye hai taki vo thoda chota dikhe 
    else if(index == _currPageValue.floor()+1){
      var currScale = _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }

    // ye else if code left wali slide ke liye hai 
    else if(index == _currPageValue.floor()-1){
      var currScale = 1 - (_currPageValue-index)*(1-_scaleFactor);
      var currTrans = _height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    
    else{
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 0);
    }


    return Transform(
      transform: matrix,
      child: Stack(children: [
        // Container with image of Dish
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                  image: AssetImage('assets/images/food1.jpg'),
                  fit: BoxFit.cover)),
        ),
      
        // Container with name of the Dish
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 40, right: 40, bottom: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: 'Vegetable Salad'),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) =>
                                Icon(Icons.star, color: AppColors.mainColor,size: 15,)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '4.5'),
                      SizedBox(width: 10),
                      SmallText(text: "1234"),
                      SizedBox(width: 5),
                      SmallText(text: "Ratings")
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconAndTextWidget(
                          icon: Icons.circle_sharp,
                          text: "Normal",
                          iconColor: AppColors.iconColor1),
                          SizedBox(width: 15,),
                      IconAndTextWidget(
                          icon: Icons.location_on,
                          text: "3.4km",
                          iconColor: AppColors.mainColor),
                          SizedBox(width: 15,),
                      IconAndTextWidget(
                          icon: Icons.access_time_rounded,
                          text: "30 min",
                          iconColor: AppColors.iconColor2),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
